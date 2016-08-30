#!/usr/bin/perl

package FindIndex; {
  use strict;
  #no warnings 'numeric';
 
  sub new {
    my ($class, %args) = @_;
	return bless { %args },  $class;
  }
  
  
  sub find {
  my ($self) = @_;
  my $mywant = $self->{ValueToFind};
  my @arr = @{$self->{ArrayToFindIn}};
  my @ReturnData = ();

#
#For not very big dimentions:
#my %index;
#@index{@arr2} = (0..$#arr2);
#my $index = $index{15};
#
	
if ( grep( /^$mywant$/, @arr ) ) 
{ #if found return index right away
my $index = 0;
++$index until $arr[$index] == $mywant or $index > $#arr;
$ReturnData[0]= $index;
$ReturnData[1]= $index+1;
return @ReturnData;
}
else
{
 my $index = 0;
 foreach my $i (0 .. $#arr) {
 
  #defining what element is closer to our want---------vvvvv
  if (($arr[$i] < $mywant) and ($arr[$i+1] > $mywant))
  {
   if (($arr[$i+1] - $mywant) > ($mywant - $arr[$i]))
   {
   #print "$arr[$i]\n";
   $ReturnData[0]= $i;
   $ReturnData[1]= $i+1;
   return @ReturnData;
   }
   else
   {
   $ReturnData[0]= $i+1;
   $ReturnData[1]= $i+2;
   return @ReturnData;
   }
  }
 
  #defining what element is closer to our want---------^^^^^
  
  } 
}

};
  
  
}

1;