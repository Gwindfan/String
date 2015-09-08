#!/usr/bin/perl
use strict;
use warnings;
use Data::Dump qw (dump);

my @words = qw(foo bar Zorg moo);
dump(\@words);

my @sorted_words = sort @words;
dump(\@sorted_words);

my @sorted_words_1 = sort {lc($a) cmp lc($b)} @words;
dump(\@sorted_words_1);

my @numbers = (14, 3, 12, 2, 23);
my @sorted_numbers = sort @numbers;
dump(@sorted_numbers);

my @sorted_numbers_1 = sort {$a <=> $b} @numbers;
dump(@sorted_numbers_1);
