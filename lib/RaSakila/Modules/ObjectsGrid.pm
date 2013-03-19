package RaSakila::Modules::ObjectsGrid;

use strict;
use warnings;
use Moose;
extends 'RapidApp::DbicAppGrid3';
with 'RapidApp::AppGrid2::Role::ExcelExport';

use RapidApp::DbicAppPropertyPage;
use RaSakila::Modules::HtmlPropPage;

use RapidApp::Include qw(sugar perlutil);

has '+use_column_summaries', default => 1;
has '+use_autosize_columns', default => 1;
has '+auto_autosize_columns', default => 1;

=pod
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
=cut

has '+include_colspec', default => sub{[qw(* customer.*)]};
has '+updatable_colspec', default => sub{[qw(* customer.* !id)]};
has '+creatable_colspec', default => sub{[qw(* customer.* !id)]};
has '+destroyable_relspec', default => sub{[qw(* customer.*)]};

has '+persist_all_immediately', default => 1;
#has '+persist_immediately', default => sub {{
#	create	=> \1,
#	update	=> \0,
#	destroy	=> \0
#}};


sub BUILD {
	my $self = shift;
	
	# Need to turn on "use_add_form" (tab or window) to use a form to create new rows.
	# without this the new row would be created with empty default values, instantly
	$self->apply_extconfig(
		use_add_form => 'tab',
		autoload_added_record => \1
	);
	
	# Turn off editing for primary columns:
	$self->apply_columns( $_ => { allow_edit => \0 } ) for ($self->ResultSource->primary_columns);
	
	
	# Apply a width to all columns:
	$self->apply_to_all_columns({ width => 130 });
	
	# Apply a larger width to rel columns:
	$self->apply_columns( $_ => { width => 175 } ) for ($self->ResultSource->relationships);
	
	$self->apply_columns( $_ => { allow_add => \0 } ) 
		for qw(id customer customer__object_id);
	

}


1;

