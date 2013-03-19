package Schema::Hp3k::Result::SoeOption;

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

Schema::Hp3k::Result::SoeOption

=cut

__PACKAGE__->table("SOE_OPTION");

=head1 ACCESSORS

=head2 order_key

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 order_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 serial_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 qty_ordered

  data_type: 'double precision'
  is_nullable: 1

=head2 price_1

  data_type: 'bigint'
  is_nullable: 1

=head2 price_2

  data_type: 'bigint'
  is_nullable: 1

=head2 cost_1

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_2

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_3

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_4

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_5

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_6

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_7

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_8

  data_type: 'double precision'
  is_nullable: 1

=head2 date_updated

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 flags_10_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 opt_name

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 opt_value

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=cut

__PACKAGE__->add_columns(
  "order_key",
  { data_type => "char", is_nullable => 1, size => 14 },
  "order_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "serial_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "qty_ordered",
  { data_type => "double precision", is_nullable => 1 },
  "price_1",
  { data_type => "bigint", is_nullable => 1 },
  "price_2",
  { data_type => "bigint", is_nullable => 1 },
  "cost_1",
  { data_type => "double precision", is_nullable => 1 },
  "cost_2",
  { data_type => "double precision", is_nullable => 1 },
  "cost_3",
  { data_type => "double precision", is_nullable => 1 },
  "cost_4",
  { data_type => "double precision", is_nullable => 1 },
  "cost_5",
  { data_type => "double precision", is_nullable => 1 },
  "cost_6",
  { data_type => "double precision", is_nullable => 1 },
  "cost_7",
  { data_type => "double precision", is_nullable => 1 },
  "cost_8",
  { data_type => "double precision", is_nullable => 1 },
  "date_updated",
  { data_type => "char", is_nullable => 1, size => 6 },
  "flags_10_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_10",
  { data_type => "char", is_nullable => 1, size => 1 },
  "opt_name",
  { data_type => "char", is_nullable => 1, size => 18 },
  "opt_value",
  { data_type => "char", is_nullable => 1, size => 18 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1bbXLi2VLXC83TWRblXkzQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
