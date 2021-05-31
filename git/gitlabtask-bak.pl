
#!/usr/bin/perl
use strict;
use warnings;

#system("git  fetch");

#(1) quit unless we have the correct number of command-line args
my $num_args = $#ARGV + 1;
my $gotcha = 0;

if ($num_args != 3) {
   print "\nMissing arguments: {issueId} {group} {project}\n";
   exit;
}

my $output = "";
$output << system("git  status");

print $output

exit 0;
