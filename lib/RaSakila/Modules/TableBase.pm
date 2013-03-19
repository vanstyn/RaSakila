package RaSakila::Modules::TableBase;

use strict;
use warnings;
use Moose;
extends 'RapidApp::DbicAppGrid3';
with 'RapidApp::AppGrid2::Role::ExcelExport';

use RapidApp::DbicAppPropertyPage;
use RaSakila::Modules::HtmlPropPage;

use RapidApp::Include qw(sugar perlutil);
use Switch 'switch';

has '+use_column_summaries', default => 1;
has '+use_autosize_columns', default => 1;
has '+auto_autosize_columns', default => 1;

# This is an option of RapidApp::AppGrid2 that will allow double-click to open Rows:
has '+open_record_class', lazy => 1, default => sub {
	my $self = shift;
	return {
		class => 'RapidApp::DbicAppPropertyPage',
		#class => 'RaSakila::Modules::HtmlPropPage',
		params => {
			ResultSource => $self->ResultSource,
			get_ResultSet => $self->get_ResultSet, 
			TableSpec => $self->TableSpec,
			include_colspec => $self->include_colspec,
			updatable_colspec => $self->updatable_colspec,
			persist_all_immediately => 1,
		}
	};
};


#has '+include_colspec', default => sub{[qw(* *.*)]};


sub customer_colspec {qw(
*
salesrepemployeenumber.reportsto.*
)}



has '+include_colspec', lazy => 1, default => sub {
	my $self = shift;
	
	my @colspecs = ();
	
	my $source = $self->ResultSource->source_name;
	scream($source);
	
	switch($source) {
	
		case 'Customer' {
			push @colspecs,&customer_colspec;
		}
	
		else {
			push @colspecs, '*';
		}
	}
	
	
	return \@colspecs;
};


has '+updatable_colspec', default => sub{[qw(* !id)]};
has '+creatable_colspec', default => sub{[qw(* !id)]};
has '+destroyable_relspec', default => sub{[qw(*)]};

has '+persist_all_immediately', default => 0;
has '+persist_immediately', default => sub {{
	create	=> \1,
	update	=> \1,
	destroy	=> \0
}};


sub BUILD {
	my $self = shift;
	
	# Need to turn on "use_add_form" (tab or window) to use a form to create new rows.
	# without this the new row would be created with empty default values, instantly
	$self->apply_extconfig(
		use_add_form => 'tab',
		use_edit_form => 'window',
		autoload_added_record => \1
	);
	
	# Turn off editing for primary columns:
	$self->apply_columns( $_ => { allow_edit => \0 } ) for ($self->ResultSource->primary_columns);
	
	
	# Apply a width to all columns:
	#$self->apply_to_all_columns({ width => 130 });
	(exists $self->columns->{$_}->{width}) or $self->apply_columns( $_ => { width => 130 } )
		for @{$self->column_order};
	
	# Apply a larger width to rel columns:
	$self->apply_columns( $_ => { width => 175 } ) for ($self->ResultSource->relationships);
	
	# Init joined columns hidden:
	$self->apply_columns( $_ => { hidden => \1 } ) 
		for (grep { $_ =~ /__/ } @{$self->column_order});

}


1;

