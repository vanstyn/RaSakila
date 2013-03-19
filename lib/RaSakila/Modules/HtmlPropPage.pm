package RaSakila::Modules::HtmlPropPage;

use strict;
use warnings;
use Moose;
extends 'RapidApp::AppDV::HtmlTable';
with 'RapidApp::Role::DbicLink2';

has '+column_layout', lazy => 1, default => sub { 
	my $self = shift;
	
	my @rels = $self->ResultSource->relationships;
	my %relmap = map {$_=>1} @rels;
	my @cols = grep { !$relmap{$_} } $self->ResultSource->columns;
	
	return [ \@cols, \@rels ];
	
};



sub supplied_id {
	my $self = shift;
	my $id = $self->c->req->params->{$self->record_pk};
	if (not defined $id and $self->c->req->params->{orig_params}) {
		my $orig_params = $self->json->decode($self->c->req->params->{orig_params});
		$id = $orig_params->{$self->record_pk};
	}
	return $id;
}

sub ResultSet {
	my $self = shift;
	my $Rs = shift;

	my $value = $self->supplied_id;
	return $Rs->search_rs($self->record_pk_cond($value));
}

has 'req_Row', is => 'ro', lazy => 1, traits => [ 'RapidApp::Role::PerRequestBuildDefReset' ], default => sub {
#sub req_Row {
	my $self = shift;
	return $self->_ResultSet->first;
};


sub content {
	my $self = shift;
	
	my $class = $self->ResultClass or return;
	my $iconCls = $class->TableSpec_get_conf('iconCls');
	my $title = $class->TableSpec_get_conf('title');
	
	return {
		xtype => 'panel',
		layout => 'anchor',
		autoScroll => \1,
		frame => \1,
		items => {
			xtype => 'panel',
			bodyStyle => 'border:1px solid;border-color:#d0d0d0;border-top-width:0px;',
			autoHeight => \1,
			title => $title,
			iconCls => $iconCls,
			collapsible => \1,
			collapseFirst => \1,
			titleCollapse => \1,
			plugins => [ 'titlecollapseplus' ],
			items => $self->SUPER::content(@_)
		}
	};
}


1;

