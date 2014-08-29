package RaSakila;
use Moose;
use namespace::autoclean;

use Catalyst;
use Catalyst::Runtime 5.80;
use RapidApp 0.99333;

my @plugins = qw(
    -Debug
    RapidApp::RapidDbic
);
push @plugins, qw(RapidApp::AuthCore);
push @plugins, qw(RapidApp::NavCore);

our $VERSION = '0.04';
our $TITLE = "RapidApp Demo1 v" . $RaSakila::VERSION;

__PACKAGE__->config(
  name => 'RaSakila',
  
  'Plugin::RapidApp::TabGui' => {
    title => $TITLE,
    nav_title => 'Sample Databases',
    dashboard_template => 'templates/dashboard.tt',
  },

  'Plugin::RapidApp::RapidDbic' => {
    
    dbic_models => [
      'Sakila',
      'MixedArticles',
      'Countries',
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
            cache_total_count => 0
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
            #include_colspec => ['*', '*.*'],
            include_colspec => ['*'],
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
        grid_params => {
         '*defaults' => {
            include_colspec => ['*'],
            updatable_colspec => ['*'],
            creatable_colspec => ['*'],
            destroyable_relspec => ['*'],
          },
          Article => {
            page_class => 'RaSakila::Modules::ArticlePage'
          }
        },
        TableSpecs => {
          Article => {
            title => 'Article',
            title_multi => 'Articles',
            display_column => 'title',
            columns => {
              id => { allow_add => \0 },
              articletext => {
                hidden => \1,
                profiles => ['html']
              }
            }
          },
          Category => {
            # Override the editor to be a simple combo/dropdown
            auto_editor_type => 'combo'
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

1;
