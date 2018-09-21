# Liquid.pm
#   Description

package Liquid;

use feature ':5.16';

use strict;
use warnings;

our $VERSION = 1.0;

use Template::Liquid;

use AppConfig;

require Exporter;
our @ISA    = qw(Exporter);
our @EXPORT = qw(
    load_template
    parse_template
);

sub load_template {
    my ( $path, %args ) = @_;
    my @result;
    open( my $fh, '<:encoding(UTF-8)', "$AppConfig::ASSET_PATH". "/". "$path" )
        or die "Could not open file '$path' $!";
    while ( my $line = <$fh> ) {
        chomp $line;
        push @result, "$line";
    }
    my $template = parse_template( join "\n", @result );
    return $template->render(%args);
}

sub parse_template {
    my (@args) = @_;
    return Template::Liquid->parse(@args);
}    ##    parse_template

1;
