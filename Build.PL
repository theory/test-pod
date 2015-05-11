use strict;
use warnings;
use Module::Build '0.30';

Module::Build->new(
    module_name        => 'Test::Pod',
    license            => 'perl',
    dist_author => 'David E. Wheeler <david@justatheory.com>',
    configure_requires => { 'Module::Build' => '0.30', },
    create_makefile_pl => 'traditional',
    build_requires     => {
        'File::Spec'    => 0,
        'Pod::Simple'   => '3.05',
        'Test::More'    => '0.62',
    },
    requires => {
        'File::Find'            => 0,
        'Pod::Simple'           => '3.05',
        'Test::Builder::Tester' => '1.02',
        'Test::More'            => '0.62',
    },
    meta_merge => {
        resources => {
            homepage   => 'http://search.cpan.org/dist/Test-Pod/',
            bugtracker => 'http://github.com/perl-pod/test-pod/issues/',
            repository => 'http://github.com/perl-pod/test-pod',
        }
    },
)->create_build_script;
