#!/usr/bin/perl
# $Id: Makefile.PL,v 1.2 2006/01/09 13:24:42 gavin Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'			=> 'Net::EPP::Frame',
    'VERSION_FROM'		=> 'lib/Net/EPP/Frame.pm',
    'PREREQ_PM'			=> {
        'XML::LibXML'		=> 0,
    },
);
