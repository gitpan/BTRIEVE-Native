package BTRIEVE::Native;

require DynaLoader;

@ISA = 'DynaLoader';

$VERSION = '0.02';

bootstrap BTRIEVE::Native $VERSION;

# -----------------------------------------------------------------------------
1;

=head1 NAME

BTRIEVE::Native - Interface to Btrieve ISAM file manager

=head1 SYNOPSIS

  use BTRIEVE::Native();

  BTRIEVE::Native::Call( ... );

=head1 DESCRIPTION

This is a simple wrapper for the Btrieve single function API.

=head1 AUTHOR

Steffen Goeldner <sgoeldner@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2003 Steffen Goeldner. All rights reserved.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

L<perl>.

=cut
