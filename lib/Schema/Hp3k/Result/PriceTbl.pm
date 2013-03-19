package Schema::Hp3k::Result::PriceTbl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

Schema::Hp3k::Result::PriceTbl

=cut

__PACKAGE__->table("PRICE_TBL");

=head1 ACCESSORS

=head2 cust_prod_key

  data_type: 'char'
  is_nullable: 1
  size: 28

=head2 price_code

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 comm_code

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 quote_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 qty_break_1

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_2

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_3

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_4

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_5

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_6

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_7

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_8

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_9

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_10

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_11

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_12

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_13

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_14

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_15

  data_type: 'integer'
  is_nullable: 1

=head2 qty_break_16

  data_type: 'integer'
  is_nullable: 1

=head2 amt_break_1

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_2

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_3

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_4

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_5

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_6

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_7

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_8

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_9

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_10

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_11

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_12

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_13

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_14

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_15

  data_type: 'double precision'
  is_nullable: 1

=head2 amt_break_16

  data_type: 'double precision'
  is_nullable: 1

=head2 comm_break_1

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_2

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_3

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_4

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_5

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_6

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_7

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_8

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_9

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_10

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_11

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_12

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_13

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_14

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_15

  data_type: 'smallint'
  is_nullable: 1

=head2 comm_break_16

  data_type: 'smallint'
  is_nullable: 1

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 cust_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 flags_4_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_4_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_4_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_4_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 div_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 currency_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "cust_prod_key",
  { data_type => "char", is_nullable => 1, size => 28 },
  "price_code",
  { data_type => "char", is_nullable => 1, size => 2 },
  "comm_code",
  { data_type => "char", is_nullable => 1, size => 2 },
  "quote_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
  "qty_break_1",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_2",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_3",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_4",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_5",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_6",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_7",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_8",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_9",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_10",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_11",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_12",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_13",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_14",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_15",
  { data_type => "integer", is_nullable => 1 },
  "qty_break_16",
  { data_type => "integer", is_nullable => 1 },
  "amt_break_1",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_2",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_3",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_4",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_5",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_6",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_7",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_8",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_9",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_10",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_11",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_12",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_13",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_14",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_15",
  { data_type => "double precision", is_nullable => 1 },
  "amt_break_16",
  { data_type => "double precision", is_nullable => 1 },
  "comm_break_1",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_2",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_3",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_4",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_5",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_6",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_7",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_8",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_9",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_10",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_11",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_12",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_13",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_14",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_15",
  { data_type => "smallint", is_nullable => 1 },
  "comm_break_16",
  { data_type => "smallint", is_nullable => 1 },
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "cust_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "flags_4_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_4_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_4_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_4_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "div_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "currency_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HH6NNVzqTKjLvMp35UF2bg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
