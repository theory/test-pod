use 5.008;
use ExtUtils::MakeMaker;

my %params = (
    'NAME'           => 'Test::Pod',
    'VERSION_FROM'   => 'Pod.pm',
    'PREREQ_PM'      => {
        'Pod::Simple'           => '3.07', # required for t/link.t
        'Test::More'            => '0.62',
        'Test::Builder::Tester' => '1.02',
        'File::Spec'            => 0,
    },
    clean => { FILES => 'Test-Pod-*' },
);

if ( $ExtUtils::MakeMaker::VERSION ge '6.46' ) {
    $parms{META_MERGE} = {
        resources => {
            license     => 'http://dev.perl.org/licenses/',
            repository  => 'http://github.com/petdance/test-pod',
        }
    }
}

WriteMakefile ( %params );
