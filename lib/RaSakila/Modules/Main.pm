package RaSakila::Modules::Main;

use strict;
use warnings;
use Moose;
extends 'RapidApp::AppBase';


use RaSakila::Modules::Explorer;
use RaSakila::Modules::Banner;

has 'render_as_json'			=> ( is => 'rw',	default => 1 );


sub BUILD {
	my $self = shift;
	$self->apply_init_modules(
		banner		=> 'RaSakila::Modules::Banner',
		explorer	=> 'RaSakila::Modules::Explorer',
	);
}


sub content {
	my $self = shift;

	return {
		layout => 'border',
		xtype		=> 'container',
		items		=> [
			#$self->banner_panel,
			$self->body_panel,
		]
	};
}

sub body_panel {
	my $self = shift;
	return {
		region			=> 'center',
		id					=> 'body-panel',
		xtype				=> 'autopanel',
		bodyCssClass	=> 'sbl-panel-body-noborder',
		layout 			=> 'fit',
		autoLoad			=> $self->base_url . '/explorer',
	};
}


sub banner_panel {
	my $self = shift;
	return {
		region			=> 'north',
		id					=> 'banner-panel',
		xtype				=> 'autopanel',
		height			=> $self->Module('banner')->height,
		bodyCssClass	=> 'sbl-panel-body-noborder',
		border			=> 0,
		bodyBorder 		=> 0,
		hideBorders		=> 1,
		cls				=> 'sbl-panel-body-noborder',
		autoEl			=> {},
		defaults	=> {
			bodyCssClass	=> 'sbl-panel-body-noborder',
		},
		autoLoad			=> $self->base_url . '/banner',
	};
}



1;
