package RaSakila::Modules::Banner;
use strict;
use warnings;
use Moose;
extends 'RapidApp::AppDV';

use RapidApp::Include qw(sugar perlutil);

has '+tt_file', default => 'banner.tt';
has 'height', is => 'ro', default => 50;
has '+extra_tt_vars', lazy => 1, default => sub { { self => shift } };
has 'banner_title', is => 'ro', lazy => 1, 
	default => sub { "RapidApp Example Application 1 (v" . $RaSakila::VERSION . ')' };

1;
