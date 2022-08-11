package Alien::libtool;

use strict;
use warnings;
use 5.008001;
use base qw( Alien::Base );

# ABSTRACT: Build or find libtool
# VERSION
# ALIEN SYNOPSIS
# ALIEN DESCRIPTION
# ALIEN SEE ALSO

=head1 HELPERS

This L<Alien> provides the following helpers which will execute the corresponding command.  You want
to use the helpers because they will use the correct incantation on Windows.

=over 4

=item libtool

=item libtoolize

=back

=cut

my %helper;

foreach my $command (qw( libtool libtoolize ))
{
  if($^O eq 'MSWin32')
  {
    $helper{$command} = sub { qq{sh -c "$command "\$*"" --} };
  }
  else
  {
    $helper{$command} = sub { $command };
  }
}

sub alien_helper {
  return \%helper;
}

1;
