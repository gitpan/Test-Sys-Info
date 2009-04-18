#!/usr/bin/perl
use strict;
use vars qw(%PREREQ %RECOMMEND %BUILDREQ);
use ExtUtils::MakeMaker;

do 'PREREQ' or die "Error including PREREQ: $!";

WriteMakefile(
   'NAME'         => 'Test::Sys::Info',
   'VERSION_FROM' => 'lib/Test/Sys/Info.pm',
   'PREREQ_PM'    => { %PREREQ, %BUILDREQ },
   ($] >= 5.005 ? (
   AUTHOR   => 'Burak Gursoy <burak@cpan.org>',
   ABSTRACT => 'Centralized test suite for Sys::Info',
   ) : ()),
   PL_FILES => {},
);
