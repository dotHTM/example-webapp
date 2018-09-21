#!/usr/bin/perl
# test.cgi
#   Description

use feature ':5.16';

use strict;
use warnings;

use Liquid;

print load_template(
    "doc.html",
    style => load_template(
        "css/dark.css",
        theme_color => "red"
    ),
    body => load_template(
        "example.html",
        some => { text => 'Contact!' } )    # 3, 2, 1, Contact!
);

