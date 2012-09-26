#!/usr/bin/perl -w
use strict;


#!/usr/bin/perl
# Loads the module and imports any functions into our namespace 
# (defaults to "main") exported by the module.  Hello::World exports
# hello() by default.  Exports can usually be controlled by the caller.
use Hello::World;
 
#process orientated 
print hello();             # prints "Hello, world!\n"
print hello("Milky Way");  # prints "Hello, Milky Way!\n"


#object orientated
my $h=Hello::World->new;
$h->print;
$h->target("ABC");
$h->print;