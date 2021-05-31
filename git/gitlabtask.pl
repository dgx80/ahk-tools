#!/usr/bin/perl
use strict;
use warnings;

system("git  fetch");

#(1) quit unless we have the correct number of command-line args
my $num_args = $#ARGV + 1;
my $gotcha = 0;

if ($num_args != 3) {
   print "\nMissing arguments: {issueId} {group} {project}\n";
   exit;
}

# Iterate in the branches of the project checkout them
foreach (`git branch -a --list` =~ /origin\/([^HEAD].*)/gm)
{
  system("git checkout ${_}") == 0 or die "Checkout failed";
  #system("git pull --rebase") == 0 or die "Pull failed";
 
  foreach (`git log --grep=${ARGV[0]} | grep commit` =~ /(\w+)$/gm)
  {
    chomp $_;
    system("start http://git.dev.progi.com/".lc($ARGV[1])."/".lc($ARGV[2])."/commit/${_}");
    $gotcha = 1;
  }

  if($gotcha) {
    print "All commits found ! See ya !\n"; exit 0;
  }
}