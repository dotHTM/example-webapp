#!/usr/bin/perl
# connect.pl
#   Description

use feature ':5.16';

use strict;
use warnings;
use Data::Dumper::Concise;

use lib "..";

use DBSimple::MySQL;

my $dbs_obj = DBSimple::MySQL->init_with_credentials(
    user     => "root",
    password => "asodihas90yc08ayhscnaoshc0ajw",
    database => "testing",
);

say " ### ››› OBJECT ‹‹‹ ### ";
say Dumper $dbs_obj->{Table_test};
say " ### ››› COUNT ‹‹‹ ### ";
say Dumper $dbs_obj->{Table_test}->count();
say " ### ››› DESC ‹‹‹ ### ";
say Dumper $dbs_obj->{Table_test}->desc();
say " ### ››› BOB ‹‹‹ ### ";
my @bob = $dbs_obj->{Table_test}->records_where("name" => "'Bob'");

say Dumper \@bob;


