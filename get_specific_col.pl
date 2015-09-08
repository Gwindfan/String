#!/usr/bin/perl
use strict;
use warnings;
open(IN, "./source.txt");
open(OUT, ">get_specific_col.txt") or die "Cannot open out file";
while(<IN>){
        my @one_line = split ' ', $_;
        print OUT "$one_line[0] $one_line[2] $one_line[5]" . "\n";
}
close(IN);
close(OUT);
