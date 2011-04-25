#!/usr/bin/perl
use strict;
use warnings;
use IO::File;

for my $fn (<*.mediawiki>) {
   my $io = IO::File->new;
   $io->open( $fn, 'r' );
   my @lines = $io->getlines;
   $io->close;
   my $mod = 0;
   for my $line ( @lines ) {
       if ( $line =~ /\[\[.*?\]\]/ ) {
           print STDERR "$fn:\n    $line\n";
           $line =~ s!\[\[(.*?)\]\]!
               $mod = 1;
               my $link = $1;
               $link =~ s/\_/\-/g;
               $link =~ s/^://;
               "[[$link]]";
           !esxg;
           print STDERR " => $line\n";
       }
   }
   if ( $mod ) {
       print STDERR "****** changed $fn\n";
       $io->open($fn, 'w');
       $io->print( join( '', @lines ) );
       $io->close;
}
}
