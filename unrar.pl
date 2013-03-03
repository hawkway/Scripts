#!/usr/bin/perl

use strict;

use warnings;

# install: $ sudo CPAN Path::Class
use Path::Class;

# install: $ sudo CPAN File::chdir
use File::chdir;

#

# Specify starting directory to search for files
my $dir = dir('/home/user/Input');

$CWD = $dir;

print "Working directory: " . $CWD . "\n\n";

# Iterate over the content of $dir
while (my $file = $dir->next) {
    
    # See if it is a directory
    if ( $file->is_dir() ) {

    	# Change working dir to current dir
    	local $CWD = $file;

    	# Execute bash program by calling script
    	system("unrar e *.rar /home/user/Output");

    }

next } # End while loop

exit 0;
