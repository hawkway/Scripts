#!/usr/bin/perl

use strict;

use warnings;

use v5.14;

my @name;

my $filenameok;

print "Name of first matrix? ";

chomp($name[0] = <>);

print "Name of second matrix? ";

chomp($name[1] = <>);

print "Name of file to create? ";

chomp(my $filename = <>);

my $lngth = length($filename);

my $crop = $lngth - 2;

my $fnck = substr($filename, $crop);

if (lc($fnck) eq ".m") { $filenameok = $filename; }

else { $filenameok = $filename . ".m"; }

open FILE, ">", $filenameok or die $!;

for (my $k = 0; $k <= 1; $k++) {

    print FILE $name[$k] . " = [\n";

    for (my $i = 1; $i <= 50; $i++) {

	for (my $j = 1; $j <= 50; $j++) {

	    my $num = int(rand(9)) + 1;

	    if ($j != 50) { print FILE $num . ","; }

	    else { print FILE $num . ";\n"; }

	}

    }

    print FILE "]\n\n";

}

print FILE $name[0] . " * " . $name[1] . "\n\nquit;";

close(FILE);

print "Matrix successfully written to file . . . :)\n";

print "Running MATLAB . . .";

my $trunc = substr($filenameok, 0, -2);

my $run = "matlab -nodesktop -nojvm -r " . $trunc . " > " . $trunc . "_output.txt";

system($run);
