#!/usr/bin/env perl
use strict;
use warnings;
my $i = 0;
my @words = ();#assing the array of words and words
my @vocab_list = ();#assing the array of words and vocab_list
my $infile = shift or die "please provide an input file name!\n";#Giving input file
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";#open an input file with utf8 encoding format
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {#tokenizing the punctuation 
	chomp $line;
	next if ($line =~ /^\s*$/);
		for($line){
		s/<\/?.+?>//g;
		s/\'(.+?)\'/$1/g;
		s/\"(.+?)\"/$1/g;
		s/[!.,::?()"\/]//g;
		s/\s~\s//g;
		s/^\s*//;
		s/\s+$//;
		s/\'//;
}
my @element = split/\s+/,$line;
push @words,@element;
}
close $IN;
@words = sort @words;
foreach my $words (@words) {
	print $words,"\n";
}
my $array_length = scalar @words;#ascending sorted words
for ($i=0;$i<$array_length;$i++) {
	($a,$b) = ($words[$i],$words[$i+1]);
	if ($a ne $b) {
		push @vocab_list,$a;
	}
}
print "\n\nvocab:\n\n";#print the each word based on above operations
foreach my $words (@vocab_list) {
	print $OUT $words,"\n";
}
