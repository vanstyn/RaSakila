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
our $TITLE = "RapidApp Sakila v" . $RaSakila::VERSION;

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
  'Plugin::RapidApp::RapidDbic' => {
    title => $TITLE,
    dbic_models => [qw(Sakila)],
    
  },
  

  
);


# Start the application
__PACKAGE__->setup(@plugins);


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
