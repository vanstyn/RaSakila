package RaSakila::Modules::NavTree;
use strict;
use warnings;
use Moose;
extends 'RapidApp::AppNavTree';

use RapidApp::Include qw(sugar perlutil);

use RaSakila::Modules::TableBase;
use RaSakila::Modules::ObjectsGrid;
use RaSakila::Modules::StaticContent;

has '+instance_id', default => 'adm-nav-tree';

sub BUILD {
	my $self = shift;
	
	$self->apply_init_modules( static_content => {
		class => 'RaSakila::Modules::StaticContent',
		params => {}
	});
	
	#init
	$self->TreeConfig;
}

sub TreeConfig {
	my $self = shift;
	return [ 
		{
			id			=> 'static_content',
			module	=> 'static_content',
			text		=> 'Static Content',
			iconCls	=> 'icon-pg',
			params	=> {},
			expand	=> 1,
			children	=> []
		},
		{
			id			=> 'db_tables',
			text		=> 'Sakila',
			iconCls	=> 'icon-server_database',
			params	=> {},
			expand	=> 1,
			children	=> $self->tables_grids_nav_items
		},

	];
}


has 'tables_grids_nav_items', is => 'ro', lazy => 1, default => sub {
	my $self = shift;
	return $self->get_schema_grid_items('Sakila');
};



sub get_schema_grid_items {
	my $self = shift;
	my $model = shift;
	
	my $items = [];
	
	my $schema = $self->app->model($model)->schema;
	
	my @sources = $schema->sources;

	foreach my $source (@sources) {
		my $Source = $schema->source($source) or die "Source $source not found!";
		
		my $class = 'RaSakila::Modules::TableBase';
		
		$class = 'RaSakila::Modules::ObjectsGrid' if ($Source->from eq 'object');
		
		my $module_name = lc($model . '_' . $Source->from);
		$self->apply_init_modules( $module_name => {
			class => $class,
			params => { ResultSource => $Source }
		});
		
		my $class = $schema->class($source);
		my $text = $class->TableSpec_get_conf('title_multi') || $source;
		my $iconCls = $class->TableSpec_get_conf('multiIconCls') || 'icon-application-view-detail';
		
		push @$items, {
			id			=> $module_name,
			text		=> $text,
			iconCls		=> $iconCls ,
			module		=> $module_name,
			params		=> {},
			expand		=> 1,
			children	=> []
		}
	}
	
	return $items;

}



1;
