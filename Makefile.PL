use inc::Module::Install;
name 'DBIx-Class-RandomStringColumns';
all_from 'lib/DBIx/Class/RandomStringColumns.pm';

requires 'String::Random' => 0.20;
requires 'DBIx::Class'    => 0.08009;

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
