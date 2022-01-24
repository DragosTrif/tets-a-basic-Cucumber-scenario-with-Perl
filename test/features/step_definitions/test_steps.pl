#!perl
  use strict; 
  use warnings;
   
  use Test2::V0;

  Given qr/^input of (.*)$/,
    sub {
     my $data = C->matches();
     is(ref $data, 'ARRAY', 'data is ok');
     is( scalar @{$data}, 1, 'we have an elemnt');
     S->{data} = $data; 
    };


  Then qr/^reply should be (.*)$/,
    sub {
      is join(' ', reverse (split(' ', S->{'data'}->[0]))),
        $1, 'Data returned is reversed';
    };