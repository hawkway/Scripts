#!/usr/bin/perl

use strict;

use warnings;

use v5.14;


# define vars

my @name;

my $filenameok;


# greeting

print "\nWelcome to Matrix_Multiply . . .\n\n";


# read in data

print "Name of first matrix? ";

chomp($name[0] = <>);

print "Name of second matrix? ";

chomp($name[1] = <>);

print "Name of file to create? ";

chomp(my $filename = <>);


# verify filename extension

my $lngth = length($filename);

my $crop = $lngth - 2;

my $fnck = substr($filename, $crop);

if (lc($fnck) eq ".m") { $filenameok = $filename; }

else { $filenameok = $filename . ".m"; }


# create new .m file

open FILE, ">", $filenameok or die $!;


# create matrices

for (my $k = 0; $k <= 1; $k++) { # total

    print FILE $name[$k] . " = [\n";

    for (my $i = 1; $i <= 50; $i++) { # rows
	
	for (my $j = 1; $j <= 50; $j++) { # columns
	    
	    my $num = int(rand(9)) + 1;

	    if ($j != 50) { print FILE $num . ","; }

	    else { print FILE $num . ";\n"; }

	}

    }

    print FILE "]\n\n";

}


# add code to multiply

print FILE $name[0] . $name[1] . " = " .  $name[0] . " * " . $name[1] . "\n\nquit;";


# close file

close(FILE);


# echo status

print "Matrix successfully written to file . . . :)\n";

print "Running MATLAB . . .";


# create matlab code

my $trunc = substr($filenameok, 0, -2);

my $run = "matlab -nodesktop -nojvm -r " . $trunc . " > " . $trunc . "_output.txt";


# execute :)

system($run);
