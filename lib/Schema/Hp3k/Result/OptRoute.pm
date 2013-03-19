package Schema::Hp3k::Result::OptRoute;

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

Schema::Hp3k::Result::OptRoute

=cut

__PACKAGE__->table("OPT_ROUTE");

=head1 ACCESSORS

=head2 order_key

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 order_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 work_center

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 extra_id

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 descr_short

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 location

  data_type: 'char'
  is_nullable: 1
  size: 10

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

=head2 inv_item

  data_type: 'char'
  is_nullable: 1
  size: 4

=cut

__PACKAGE__->add_columns(
  "order_key",
  { data_type => "char", is_nullable => 1, size => 14 },
  "order_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "work_center",
  { data_type => "char", is_nullable => 1, size => 10 },
  "extra_id",
  { data_type => "char", is_nullable => 1, size => 8 },
  "descr_short",
  { data_type => "char", is_nullable => 1, size => 20 },
  "location",
  { data_type => "char", is_nullable => 1, size => 10 },
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
  "inv_item",
  { data_type => "char", is_nullable => 1, size => 4 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WDvDP6QuG6FegEwP0eAvpw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
