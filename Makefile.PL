use ExtUtils::MakeMaker;

WriteMakefile
(
  NAME          => 'BTRIEVE::Native'
, VERSION_FROM  => 'Native.pm'
, ABSTRACT_FROM => 'Native.pm'
, AUTHOR        => 'Steffen Goeldner'
, IMPORTS       => { BTRCALL => 'wbtrv32.BTRCALL' }
);
