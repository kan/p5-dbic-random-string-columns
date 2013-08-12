requires 'DBIx::Class', '0.08009';
requires 'Filter::Util::Call';
requires 'String::Random', '0.2';

on build => sub {
    requires 'ExtUtils::MakeMaker', '6.36';
};
