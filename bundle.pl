#! /usr/bin/perl
use utf8;

BEGIN:
sub trim {
	return $_[0] =~ s/^\s+|\s+$//rg;
}

BEGIN:
$l_count = 0;

while (my $input = <STDIN>) {
	for my $line (split(/\r|\n/, $input)) { 
		$line = trim($line);
 
		$wrapper = $line =~ /\D+/ ? '"' : '';
		if ($l_count == 0) {
			$line =~ s/^([\w\W]+)/$wrapper$1$wrapper/g;
		} else {
			$line =~ s/^([\w\W]+)/,$wrapper$1$wrapper/g;
		}

		$l_count ++;

		print STDOUT $line;
	}
}

END:
