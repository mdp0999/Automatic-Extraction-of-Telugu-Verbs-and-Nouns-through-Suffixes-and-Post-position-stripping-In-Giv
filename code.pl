#!/usr/bin/env perl
use strict;
use warnings;
use utf8;#used for encoding and decoding purpose
my $base1 = "";   #declaring bases 
my @words = (); #assing the array of words and vocab_list
my @vocab_list = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {#assign input data to each operation in loop and checks true or false 
if ($line  =~ /(\w+)కం$|(\w+)గ్నం$|(\w+)రం$|(\w+)గం$|(\w+)హం$|(\w+)ర్వం$|(\w+)వ్యం$|(\w+)ర్మ$|(\w+)దం$|(\w+)స్యం$|(\w+)ల్య$|(\w+)చెం$|(\w+)ర్యం$|(\w+)టం$|(\w+)ల$|(\w+)ష్టం$/&$line !~/(\ w+)న్ని$|(\w+)మ్మ్ర$/){#pattern matching
$base1 = substr$line,0,-1;#extracting root word
print $OUT "$line\t\t $base1\t\t Noun\n\n";
}if($line =~ /(\w+)లొ$|(\w+)కి$|(\w+)లు$|(\w+)కు$|(\w+)తొ$/){ #pattern matching
$base1 = substr$line,0,-3;#extracting root word
print $OUT "$line\t\t $base1\t\t Noun\n\n";#print output
}
}
close $IN;
