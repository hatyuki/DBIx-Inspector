use strict;
use warnings FATAL => 'all';
use Module::Build;

my $build = Module::Build->new(
    license              => 'perl',
    recursive_test_files => 1,
    dynamic_config       => 0,
    build_requires       => {
        'Test::Requires' => '0',
        'Test::More'     => '0.98'
    },
    configure_requires => { 'Module::Build' => '0.38' },
    requires           => {
        'perl'                  => '5.008001',
        'Module::Load'          => '0',
        'Class::Accessor::Lite' => '0',
        'DBI'                   => '0'
    },
    no_index    => { 'directory' => [ 'inc', 't', 'xt' ] },
    name        => 'DBIx-Inspector',
    module_name => 'DBIx::Inspector',

    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? 't/ xt/' : 't/',

    create_readme  => 1,
    create_license => 1,
);
$build->create_build_script();
