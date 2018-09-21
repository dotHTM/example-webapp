# Config.pm
#   Description


package AppConfig;

use feature ':5.16';

use strict;
use warnings;

our $VERSION = 1.0;

require Exporter;
our @ISA    = qw(Exporter);
our @EXPORT = qw(
     $ASSET_PATH
);

our $ASSET_PATH = "/usr/local/apache2/assets";

1;
