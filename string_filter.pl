#!/usr/bin/perl
use strict;
use warnings;
## Way 1
open(IN, "serials.txt");
my $line_num = 1;
while(<IN>){
    if($_ =~ /ccccAg/){
        print "Found on line $line_num, $_ \n";
    }
    $line_num++;
}
close(IN);

## Way 2
open(IN, "serials.txt");
my $line_num = 1;
my $sub_string = 'cc';
while(my $one_line = <IN>){
		my $current_position = 0;
		while( (my $start_position = index($one_line, $sub_string, $current_position)) != -1){
			print "Found at line $line_num, position $start_position \n";
			## Move index forward
			$current_position += $start_position + length($sub_string); 
		}
		$line_num++;
}

close(IN);
