#!/usr/bin/env perl
use strict;
use warnings;
use utf8;            #used for encoding and decoding purpose
my $base1 = "";      #declaring bases
my $base2 = "";  
my $base3 = "";
my $base4 = "";
my $base5 = "";
my $base6 = "";
my $base7 = "";
my $base8 = "";
my $base9 = "";
my $base10 = "";
my $base11 = "";
my $base12 = "";
my $base13 = "";
my @words = ();      #assing the array of words and vocab_list
my @vocab_list = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {                         #assign input data to each operation in loop and checks true or false 
if ($line  =~ /(\w+)చాడు$|(\w+)చారు$|(\w+)చావు$|(\w+)చాను$/){   #pattern matching
my $root1 = substr$line,0,-4; #extracting root word
$base1 = $root1."టం";    #adding root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t  $base1\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)టాడు$|(\w+)టాను$|(\w+)టాడు$|(\w+)టాము$|(\w+)టారు$|(\w+)టవి$/) { #pattern matching
$base2 = substr$line,0,-4;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base2\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)చ్చారు$|(\w+)చ్చాడు$|(\w+)చ్చును$/) { #pattern matching
my $root2 = substr$line,0,-7;#extracting root word
$base3 = $root2."వ్వటం"; #adding root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base3\t\t  Verb\n\n";
}
if ($line  =~ /(\W+)ట$|(\W+)చు$|(\W+)యు$|(\w+)డం$|(\w+)టం$/&$line !~/(\w+)డ్డం$|(\w+)ష్టం$|ట్టం$/&$line !~/\bఖం(\w+)\b/){ #pattern matching
$base4 = substr$line,0,-1;#extracting root word
print $OUT "$line\t\t\t  verb\t\t\t $base4\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)నది$|(\w+)నావు$|(\w+)నాను$|(\w+)నవి$|(\w+)నారు$|(\w+)నాడు$/) { #pattern matching
$base5 = substr$line,0,-4;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base5\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)స్తుంది$/){ #pattern matching
my $root5 = substr$line,0,-8;#extracting root word
$base13 = $root5."ంచటం";#adding root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base13\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)తుంది$|(\w+)టుంది$/){ #pattern matching
$base6 = substr$line,0,-5;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base6\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)యింది$/){ #pattern matching
my $root3 = substr$line,0,-6;#extracting root word
$base7 = $root3."వు";#adding root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base7\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)న్నది$|(\w+)న్నవి$/) { #pattern matching
$base8 = substr$line,0,-4;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base8\t\t  Verb\n\n";
} 
if ($line  =~ /(\w+)న్నాను$|(\w+)న్నావు$|(\w+)న్నది$|(\w+)న్నాము$|(\w+)న్నారు$|(\w+)న్నవి$|(\w+)న్నాడు$/) { #pattern matching
$base9 = substr$line,0,-5;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base9\t\t  Verb\n\n";
} 
if ($line  =~ /(\w+)తాను$|(\w+)తావు$|(\w+)తాము$|(\w+)తారు$|(\w+)తావి$|(\w+)తాడు$/) { #pattern matching
$base10 = substr$line,0,-4;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base10\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)దును$|(\w+)దువు$|(\w+)దుము$|(\w+)దురు$|(\w+)తిమి$|(\w+)తిరు$|(\w+)తివి$|(\w+)తిని$/) { #pattern matching
$base11 = substr$line,0,-4;#extracting root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base11\t\t  Verb\n\n";
} 
if ($line  =~ /(\w+)స్తాను$|(\w+)స్తావు$|(\w+)స్తాము$|(\w+)స్తారు$|(\w+)స్తావి$|(\w+)స్తాడు$/) { #pattern matching
my $root4 = substr$line,0,-7;#extracting root word
$base12 = $root4."వ్వటం";#adding root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base12\t\t  Verb\n\n";
}
if ($line  =~ /(\w+)స్తుంది$/){  #pattern matching
my $root5 = substr$line,0,-8;#extracting root word
$base13 = $root5."ంచటం";#adding root word
print $OUT "$line\t\t  Verb+Tense+PNG\t\t $base13\t\t  Verb\n\n";
}
}
close $IN;


