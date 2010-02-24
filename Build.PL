use strict;
use warnings;
use Module::Build '0.30';

Module::Build->new(
    module_name        => 'Test::Pod',
    license            => 'perl',
    configure_requires => { 'Module::Build' => '0.30', },
    build_requires     => {
        'Module::Build' => '0.30',
        'Test::More'    => '0.70',
    },
    requires => {
        'Pod::Simple'           => '3.07',
        'Test::More'            => '0.70',,
        'Test::Builder::Tester' => '1.02',
        'File::Spec'            => 0,
    },
    meta_merge => {
        resources => {
            homepage   => 'http://search.cpan.org/dist/Test-Pod/',
            bugtracker => 'http://github.com/theory/test-pod/issues/',
            repository => 'http://github.com/theory/test-pod/tree/',
        }
    },
)->create_build_script;
