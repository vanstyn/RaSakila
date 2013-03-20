package RaSakila;
#use Moose;
#use namespace::autoclean;

use Catalyst::Runtime 5.80;

# Set flags and add plugins for the application.
#
# Note that ORDERING IS IMPORTANT here as plugins are initialized in order,
# therefore you almost certainly want to keep ConfigLoader at the head of the
# list if you're using it.
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory


use RapidApp::Include qw(sugar perlutil);


my @plugins = qw/
    -Debug
    ConfigLoader
    Static::Simple
    RapidApp::RapidDbic
/;

use Catalyst;

#extends 'RapidApp::Catalyst';

#extends 'Catalyst';
#with 'Catalyst::Plugin::RapidApp';

our $VERSION = '0.01';
our $TITLE = "RapidApp SakilaDB (v" . $RaSakila::VERSION . ')';

# Configure the application.
#
# Note that settings in rasakila.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
  name => 'RaSakila',
  # Disable deprecated behavior needed by old applications
  disable_component_resolution_regex_fallback => 1,
  'Model::RapidApp' => {
    rootModuleClass => 'RapidApp::RootModule',
    rootModuleConfig => {
      app_title => $TITLE,
      main_module_class => 'RapidApp::AppExplorer',
      main_module_params => {
        title => 'Sakila Example App',
        right_footer => $TITLE,
        iconCls => 'icon-server_database',
        navtree_class => 'RapidApp::AppDbicTree',
        navtree_params => {
          dbic_models => [qw(Sakila)],
          table_class	=> 'RaSakila::Modules::TableBase'
        }
      }
    }
  }
);


my @p = ();
@p = @plugins;

# Start the application
__PACKAGE__->setup(@p);


=head1 NAME

RaSakila - Catalyst based application

=head1 SYNOPSIS

    script/rasakila_server.pl

=head1 DESCRIPTION

[enter your description here]

=head1 SEE ALSO

L<RaSakila::Controller::Root>, L<Catalyst>

=head1 AUTHOR

root

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
