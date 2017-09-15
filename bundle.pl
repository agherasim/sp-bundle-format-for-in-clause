#! /usr/bin/perl
use utf8;

BEGIN:
	sub trim {
   		return $_[0] =~ s/^\s+|\s+$|\n+$//rg;
	}

BEGIN:
	$l_count = 0;

while (my $line = <STDIN>) { 
	$line = trim($line);
	if ($l_count == 0) {
		$line =~ s/^([\w\W]+)/\"$1\"/g;
	} else {
		$line =~ s/^([\w\W]+)/,\"$1\"/g;
	}
    
    $l_count ++;
    
  	print STDOUT $line;
}

END:
