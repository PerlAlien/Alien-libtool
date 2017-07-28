use Test2::V0;
use Test::Alien;
use Alien::libtool;
use Env qw( @PATH );

alien_ok 'Alien::libtool';

my @cmd = ('libtool', '--version');

my $wrapper = sub { [@_] };

if($^O eq 'MSWin32')
{
  skip_all 'test requires Alien::MSYS on Windows'
    unless eval q{ require Alien::MSYS; 1 };
  push @PATH, Alien::MSYS::msys_path();
  $wrapper = sub { ['sh', -c => "@_"] };
}

run_ok($wrapper->($_, '--version'))
  ->success
  ->note for qw( libtool libtoolize );

done_testing;
