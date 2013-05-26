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
push @plugins, qw(RapidApp::NavCore);
push @plugins, qw(RapidApp::RequestLogger);

use Catalyst;

#extends 'RapidApp::Catalyst';

#extends 'Catalyst';
#with 'Catalyst::Plugin::RapidApp';

our $VERSION = '0.01';
our $TITLE = "RapidApp Demo1 v" . $RaSakila::VERSION;

# Configure the application.
#
# Note that settings in rasakila.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
  name => 'RaDemo1',
  # Disable deprecated behavior needed by old applications
  disable_component_resolution_regex_fallback => 1,
  'Model::RapidApp::CoreSchema' => {
    #db_file => 'foo.db'
  },
  'Plugin::RapidApp::NavCore' => {
    allow_manage => 1, #<-- default '1'
    user_views => 1 #<-- default '1'
  },
  'Plugin::RapidApp::RapidDbic' => {
    title => $TITLE,
    nav_title => 'Sample Databases',
    dashboard_template => 'templates/dashboard.tt',
    #banner_template => 'templates/rapidapp/simple_auth_banner.tt',
    dbic_models => [
      'Sakila',
      'MixedArticles',
      'Countries',
      'RapidApp::CoreSchema',
      'ItsInventory'
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
      Countries => {
        grid_params => {
          '*defaults' => {
            include_colspec => ['*', '*.*'],
            updatable_colspec => ['*'],
            creatable_colspec => ['*'],
            destroyable_relspec => ['*'],
          },
        },
        virtual_columns => {
          FormofGovernment => {
            gov_tot_population => {
              data_type => "int", 
              is_nullable => 0, 
              sql => 'SELECT SUM(Population) FROM countryinfo where FormofGovernment = self.name'
            },
            avg_yearofindep => {
              data_type => "int", 
              is_nullable => 0, 
              sql => 'SELECT ROUND(AVG(yearofindep)) FROM countryinfo ' .
                'where FormofGovernment = self.name and yearofindep IS NOT NULL'
            }
          },
          Region => {
            region_population => {
              data_type => "int", 
              is_nullable => 0, 
              sql => 'SELECT SUM(Population) FROM countryinfo where Region = self.name'
            }
          },
          Continent => {
            cotinent_population => {
              data_type => "int", 
              is_nullable => 0, 
              sql => 'SELECT SUM(Population) FROM countryinfo where Continent = self.name'
            }
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
      },
      
      ItsInventory => {
       grid_params => {
          #'*defaults' => {
          #  updatable_colspec => ['*'],
          #  creatable_colspec => ['*'],
          #  destroyable_relspec => ['*'],
          #},
          Item => {
            include_colspec => ['*', 'location.client' ]
          }
        },
      
        virtual_columns => {
          Location => {
            full_location => {
              data_type => "varchar", 
              is_nullable => 0, 
              sql => 'SELECT CONCAT(self.name,CONCAT(" - ",' 
                .'(SELECT name from clients WHERE id = self.client_id LIMIT 1)'
              .'))'
            }
          }
        },
        TableSpecs => {
          Category => {
            display_column => 'name'
          },
          Client => {
            display_column => 'name'
          },
          Item => {
            display_column => 'name'
          },
          Statuse => {
            display_column => 'name'
          },
          Location => {
            display_column => 'full_location'
          },
          User => {
            display_column => 'username'
          },
          Vendor => {
            display_column => 'name'
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
