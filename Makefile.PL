use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'CI::Test',
    AUTHOR           => q{brian greenfield <briang@cpan.org>},
    VERSION_FROM     => 'lib/CI/Test.pm',
    ABSTRACT_FROM    => 'lib/CI/Test.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'          => 0,
        'Test::Most'          => 0,
        'Test::CheckManifest' => 0, # only for $RELEASE_TESTING=1
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'CI-Test-*' },
);
