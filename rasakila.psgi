use strict;
use warnings;

use RaSakila;

my $app = RaSakila->apply_default_middlewares(RaSakila->psgi_app);
$app;

