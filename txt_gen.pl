#!/usr/bin/perl
use strict;
use warnings;

open OUT_FILE, '+>./source.txt';
my $field = '';

for (my $char = 'a'; $char le 'j'; $char++){
    for (my $num = 0; $num < 10; $num++){
        $field .= $char . $num . ' ';
    }
        print OUT_FILE $field. "\n";
        ## Restore
        $field = '';
}
close(OUT_FILE);
