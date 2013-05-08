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

# Find the rapidapp lib directory. Assume we're being ran from script/ dir
# of a standard Catalyst App and the rapidapp repo is at rapidapp/
use FindBin;
use lib "$FindBin::Bin/../rapidapp/lib";

use RapidApp::Include qw(sugar perlutil);


my @plugins = qw(
    -Debug
    Static::Simple
    RapidApp::RapidDbic
);

push @plugins, qw(RapidApp::AuthCore);

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
  'Model::RapidApp::CoreSchema' => {
    #db_file => 'foo.db'
  },
  'Plugin::RapidApp::RapidDbic' => {
    title => $TITLE,
    dashboard_template => 'templates/dashboard.tt',
    banner_template => 'templates/rapidapp/simple_auth_banner.tt',
    dbic_models => [
      'Sakila',
      'MixedArticles',
      'RapidApp::CoreSchema'
    ],
    hide_fk_columns => 1,
    configs => {
      'RapidApp::CoreSchema' => {
        grid_params => {
          '*defaults' => {
            updatable_colspec => ['*'],
            creatable_colspec => ['*'],
            destroyable_relspec => ['*'],
          },
          Role => {
            no_page => 1,
            persist_immediately => {
              create => \0,
              update => \0,
              destroy	=> \0
            },
            extra_extconfig => { use_add_form => \0 }
          }
        }
      },
      Sakila => {
        grid_params => {
          '*defaults' => {
            updatable_colspec => ['*'],
            creatable_colspec => ['*'],
            deletable_colspec => ['*']
          }
        },
        virtual_columns => {
          Actor => {
            full_name => {
              data_type => "varchar", 
              is_nullable => 0, 
              sql => 'SELECT CONCAT(self.first_name,CONCAT(" ",self.last_name))'
            }
          }
        },
        TableSpecs => {
          Actor => {
            display_column => 'full_name'
          },
          Category => {
            display_column => 'name'
          },
          City => {
            display_column => 'city'
          },
          Country => {
            display_column => 'country'
          },
          Film => {
            display_column => 'title'
          },
          Language => {
            display_column => 'name'
          }
        }
      },
      MixedArticles => {
        grid => {},
        page => {},
        TableSpecs => {
          Article => {
            title => 'Article',
            title_multi => 'Articles',
            columns => {
              articletext => {
                hidden => \1,
                profiles => ['html']
              }
            }
          }
        }
      }
    }
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
