package RaSakila::Modules::Explorer;

use strict;
use warnings;
use Moose;
extends 'RapidApp::AppBase';
#with 'RapidApp::Role::AuthRequire';

use RapidApp::Include qw(sugar perlutil);

use RaSakila::Modules::NavTree;
use RaSakila::Modules::Dashboard;

has 'title', is => 'ro', default => 'RapidApp Example 1';
has 'iconCls', is => 'ro',	default => 'icon-server_database';

sub BUILD {
	my $self = shift;
	
	$self->apply_init_modules(
		navtree => 'RaSakila::Modules::NavTree',
		dashboard => 'RaSakila::Modules::Dashboard'
	);
}


sub content {
	my $self = shift;

	return {
		#id			=> $self->instance_id,
		id			=> 'explorer-id',
		xtype		=> 'panel',
		layout	=> 'border',
		items		=> [
			$self->content_area,
			{
				region	=> 'west',
				title		=> $self->title,
				iconCls		=> $self->iconCls,
				collapsible => \1,
				split => \1,
				minSize => 150,
				width	=> 240,
				margins => '3 3 3 3',
				layout	=> 'fit',
				#tools => [{
				#	id => 'refresh',
				#	qtip => 'Refresh Nav Tree',
				#	handler => jsfunc 'Ext.ux.RaSakila.reloadMainNavTreeOnly'
				#}],
				collapseFirst => \0,
				items => $self->west_area_items,
			}
		],
		footer => \1,
		footerCfg => {
			tag => 'div',
			html => q{
<div class="ra-footer no-text-select"><div class="wrap">
	<table width="100%"><tr>
		<td width="25%" class="left">
		
		</td>
		<td width="50%" class="center">
			<div id="infostatus"></div>
		</td>
		<td width="25%" class="right">
			RaSakila v} . $RaSakila::VERSION . q{
		</td>
	</tr></table>
</div></div>
}
		},
	};
}


sub west_area_items {
	my $self = shift;
	
	return $self->Module('navtree')->content;
	
	#return {
	#	xtype => 'panel',
	#	autoScroll => \1,
	#	footer => \1,
	#	footerCfg => {
	#		tag => 'div',
	#		html => 
	#			'<div style="text-align:center;padding-bottom:2px;">' .
	#				'<a target="_blank" href="http://www.intellitree.com/">' .
	#					'<img width="180" height="29" border="0" src="/static/rapidapp/images/powered_intellitree_footer.png">' .
	#				'</a>' .
	#			'</div>'
	#	},
	#	bodyCssClass => 'sbl-panel-body-noborder',
	#	items => $self->Module('navtree')->content
	#};
}


sub content_area {
	my $self = shift;
	return  RapidApp::JSONFunc->new(
		func => 'new Ext.ux.RapidApp.AppTab.TabPanel',
		parm => {
			# main-load-target is looked for by RapidApp js functions:
			id => 'main-load-target',
			region		=> 'center',
			margins		=> '3 3 3 0',
			bodyCssClass		=> 'sbl-panel-body-noborder',
			
			initLoadTabs => [
				{
					title	=> 'Dashboard',
					#iconCls	=> 'icon-text-rich-colored',
					iconCls => 'icon-server_database',
					closable	=> \0,
					autoLoad => {
						url 	=> $self->Module('dashboard')->base_url,
						params	=> {}
					}
				}
			]
		}
	);
}


1;
