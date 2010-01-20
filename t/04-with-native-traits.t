use strict;
use warnings;

use Test::More tests => 2;

{
    package MyClass;

    use MooseX::ClassAttribute;

    class_has counter => (
        traits  => ['Counter'],
        is      => 'ro',
        handles => {
            inc_counter => 'inc',
        },
    );
}

is( MyClass->counter(), 0 );

MyClass->inc_counter();
is( MyClass->counter(), 1 );
