package RaSakila::Modules::ArticlePage;
use warnings;
use Moose;
extends 'RapidApp::AppDV::HtmlTable';
with 'RapidApp::Role::DbicLink2', 'RapidApp::Role::DbicRowPage';

use RapidApp::Include qw(sugar perlutil);

has '+allow_restful_queries', default => 1;
has '+column_layout', lazy => 1, default => sub { (shift)->_build_column_layout };
sub _build_column_layout {[
[qw(
category
url
title
author
description
articletext
)],
]}

around 'content' => sub {
  my $orig = shift;
  my $self = shift;
  my $ret = $self->$orig(@_);
  
  my $Row = $self->req_Row;
  
  return {
  	tabTitle => 'Article ' . $Row->get_column('id'),
		frame => \0,
		border => \0,
		bodyCssClass => 'x-panel-mc', #<-- same class as frame => \1
		bodyStyle => 'padding: 0;overflow-y:scroll;', #<-- override the 6px padding of x-panel-mc
		items => {
			layout => 'anchor',
			border => \0,
			autoHeight => \1,
			autoWidth		=> \1,
			frame => \1,
			closable => 0,
			items => [{
        xtype => 'panel',
        bodyStyle => 'border:1px solid;border-color:#d0d0d0;border-top-width:0px;',
        autoHeight => \1,
        title => $Row->get_column('title'),
        iconCls => 'icon-page',
        collapsible => \1,
        collapseFirst => \1,
        titleCollapse => \1,
        plugins => [ 'titlecollapseplus' ],
        items => $ret
      }],
		}
  };
};



1;
