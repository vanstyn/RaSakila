package RaSakila::Modules::Root;

use Moose;
extends 'RapidApp::RootModule';

use RapidApp::Include qw(sugar perlutil);

use RapidApp::ErrorView;
use RaSakila::Modules::Main;

around 'BUILDARGS' => sub {
	my ($orig, $class, @args)= @_;
	my $params= $class->$orig(@args);
	$params->{default_module} ||= 'main';
	$params->{module_name} ||= '';
	return $params;
};


sub BUILD {
	my $self= shift;
	
	$self->app_title("RapidApp Example Application 1 (v" . $RaSakila::VERSION . ')');
	
	$self->apply_init_modules(
		main => 'RaSakila::Modules::Main',
	);
}

no Moose;
__PACKAGE__->meta->make_immutable(1);
1;
