package Test::Sys::Info;
use strict;
use vars qw( $VERSION @ISA @EXPORT );
use Carp qw( croak );
use Exporter ();
use Test::More qw( no_plan );

$VERSION = '0.11';
@ISA     = qw( Exporter  );
@EXPORT  = qw( driver_ok );

ok(1, "Workaround EU::MM Bug");

sub driver_ok {
    require_ok("Test::Sys::Info::Driver");
    Test::Sys::Info::Driver->new( shift )->run;
}

1;

__END__

=pod

=head1 NAME

Test::Sys::Info - Centralized test suite for Sys::Info.

=head1 SYNOPSIS

    use Test::Sys::Info;
    driver_ok('Windows'); # or Linux, etc.

=head1 DESCRIPTION

=head1 SEE ALSO

L<Sys::Info>.

=head1 AUTHOR

Burak Gürsoy, E<lt>burakE<64>cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2009 Burak Gürsoy. All rights reserved.

=head1 LICENSE

This library is free software; you can redistribute it and/or modify 
it under the same terms as Perl itself, either Perl version 5.10.0 or, 
at your option, any later version of Perl 5 you may have available.

=cut
