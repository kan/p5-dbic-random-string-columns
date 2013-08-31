# NAME

DBIx::Class::RandomStringColumns - Implicit random string columns

[![Build Status](https://travis-ci.org/kan/p5-dbic-random-string-columns.png?branch=master)](https://travis-ci.org/kan/p5-dbic-random-string-columns)

# SYNOPSIS

    pacakge CD;
    __PACKAGE__->load_components(qw/RandomStringColumns Core DB/);
    __PACKAGE__->random_string_columns('uid');

    pacakge Artist;
    __PACKAGE__->load_components(qw/RandomStringColumns Core DB/);
    __PACKAGE__->random_string_columns(['rid', {length => 10}]);

    package LoginUser
    __PACKAGE__->load_components(qw/RandomStringColumns Core DB/);
    __PACKAGE__->random_string_columns(
      ['rid', {length => 10}],
      ['login_id', {length => 15, solt => '[0-9]'}],
    );

# DESCRIPTION

This [DBIx::Class](http://search.cpan.org/perldoc?DBIx::Class) component reassemble the behavior of
[Class::DBI::Plugin::RandomStringColumn](http://search.cpan.org/perldoc?Class::DBI::Plugin::RandomStringColumn), to make some columns implicitly created as random string.

Note that the component needs to be loaded before Core.

# METHODS

## insert

## random\_string\_columns

    $pkg->random_string_columns('uid'); # uid column set random string.
    $pkg->random_string_columns(['rid', {length=>10}]); # set string length.
    # set multi column rule
    $pkg->random_string_columns(
      'uid',
      ['rid', {length => 10}],
      ['login_id', {length => 15, solt => '[0-9]'}],
    );

    this method need column name, and random string generate option.
    option is "length", and "solt".

## get\_random\_string

# AUTHOR

Kan Fushihara  `<kan __at__ mobilefactory.jp>`

# LICENSE AND COPYRIGHT

Copyright (c) 2006, Kan Fushihara `<kan __at__ mobilefactory.jp>`. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See [perlartistic](http://search.cpan.org/perldoc?perlartistic).
