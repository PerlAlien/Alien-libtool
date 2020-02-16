# Alien::libtool [![Build Status](https://secure.travis-ci.org/Perl5-Alien/Alien-libtool.png)](http://travis-ci.org/Perl5-Alien/Alien-libtool) ![macos](https://github.com/Perl5-Alien/Alien-libtool/workflows/macos/badge.svg) ![windows](https://github.com/Perl5-Alien/Alien-libtool/workflows/windows/badge.svg)

Build or find libtool

# SYNOPSIS

In your script or module:

```perl
use Alien::libtool;
use Env qw( @PATH );

unshift @PATH, Alien::libtool->bin_dir;
```

# DESCRIPTION

This distribution provides libtool so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of libtool on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

# SEE ALSO

[Alien](https://metacpan.org/pod/Alien), [Alien::Base](https://metacpan.org/pod/Alien::Base), [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# AUTHOR

Author: Graham Ollis <plicease@cpan.org>

Contributors:

Zaki Mughal (zmughal, sivoais)

Chase Whitener (genio, CAPOEIRAB)

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
