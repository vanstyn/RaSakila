package RaSakila::Modules::Root;

use Moose;
extends 'RapidApp::RootModule';

use RapidApp::Include qw(sugar perlutil);

use RapidApp::ErrorView;
#use RaSakila::Modules::Explorer;

use RapidApp::AppExplorer;

around 'BUILDARGS' => sub {
	my ($orig, $class, @args)= @_;
	my $params= $class->$orig(@args);
	$params->{default_module} ||= 'main';
	$params->{module_name} ||= '';
	return $params;
};


sub BUILD {
	my $self= shift;
	
	my $title = "RapidApp Sakila (v" . $RaSakila::VERSION . ')';
	
	$self->app_title($title);
	
	$self->apply_init_modules(
		main => {
			class => 'RapidApp::AppExplorer',
			params => {
				title => 'Sakila Example App',
				right_footer => $title,
				iconCls => 'icon-server_database',
				navtree_class => 'RapidApp::AppDbicTree',
				navtree_params => {
					dbic_models => [qw(Sakila)],
					table_class	=> 'RaSakila::Modules::TableBase'
				}
			}
		}
	);
}

no Moose;
__PACKAGE__->meta->make_immutable(1);
1;
