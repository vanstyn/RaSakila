package Schema::Hp3k::Result::ProdIdx;

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

Schema::Hp3k::Result::ProdIdx

=cut

__PACKAGE__->table("PROD_IDX");

=head1 ACCESSORS

=head2 prod_no

  data_type: 'char'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 18

=head2 part_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 qty_ordered

  data_type: 'double precision'
  is_nullable: 1

=head2 descr_short

  data_type: 'char'
  is_nullable: 1
  size: 20

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

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "prod_no",
  {
    data_type => "char",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 18,
  },
  "part_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "qty_ordered",
  { data_type => "double precision", is_nullable => 1 },
  "descr_short",
  { data_type => "char", is_nullable => 1, size => 20 },
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
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
);
__PACKAGE__->set_primary_key("prod_no");

=head1 RELATIONS

=head2 prod_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProdMast>

=cut

__PACKAGE__->belongs_to(
  "prod_no",
  "Schema::Hp3k::Result::ProdMast",
  { prod_no => "prod_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a1O76hWxyI3pQVHHgs6QZg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
