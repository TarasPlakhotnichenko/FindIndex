#!/usr/bin/perl -w
use strict;
use TarasPlakhotnichenkoFindIndex;
my @ReturnedArray=();

my @ar = (1,2,5,7,12,15,50,51,52,57,77);
my $obj = FindIndex->new(ValueToFind => 77, ArrayToFindIn   => \@ar );
@ReturnedArray= $obj->find();
print "Index:" .  $ReturnedArray[0] . "; Iterations:" . $ReturnedArray[1] .  "\n";

#52->    Index:8; Iterations:9
#53->    Index:8; Iterations:9
#55->    Index:9; Iterations:9
#1->     Index:0; Iterations:1 
#77->    Index:10; Iterations:11
