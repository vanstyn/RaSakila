package Schema::Hp3k::Result::PartAttr;

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

Schema::Hp3k::Result::PartAttr

=cut

__PACKAGE__->table("part_attr");

=head1 ACCESSORS

=head2 prod_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 0
  size: 18

=head2 weight

  data_type: 'decimal'
  is_nullable: 1
  size: [8,4]

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 notes

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 uses

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 catalog_link

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 min_qty

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 pkg_qty

  data_type: 'integer'
  is_nullable: 1

=head2 action

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 adjustment

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 bleed

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 bore

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 burst_pres

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 connector

  data_type: 'varchar'
  is_nullable: 1
  size: 24

=head2 exhaust

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 flow

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 force

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 gasket

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 hose_barb

  data_type: 'varchar'
  is_nullable: 1
  size: 24

=head2 input_psi

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 length

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 max_psi

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 medium

  data_type: 'varchar'
  is_nullable: 1
  size: 24

=head2 mount

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 nut_supplied

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 ports

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 power_con

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 power_factor

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 response

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 rod

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 rod_dia

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 seals

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 spring_force_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 spring_force_re

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 stem_travel

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 stroke

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 temper

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 thread

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 travel_arc

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 voltage

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 img1_html

  data_type: 'text'
  is_nullable: 1

=head2 img2_html

  data_type: 'text'
  is_nullable: 1

=head2 img3_html

  data_type: 'text'
  is_nullable: 1

=head2 img4_html

  data_type: 'text'
  is_nullable: 1

=head2 img5_html

  data_type: 'text'
  is_nullable: 1

=head2 img6_html

  data_type: 'text'
  is_nullable: 1

=head2 new_change_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "prod_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 0, size => 18 },
  "weight",
  { data_type => "decimal", is_nullable => 1, size => [8, 4] },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "notes",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "uses",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "catalog_link",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "min_qty",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "pkg_qty",
  { data_type => "integer", is_nullable => 1 },
  "action",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "adjustment",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "bleed",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "bore",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "burst_pres",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "connector",
  { data_type => "varchar", is_nullable => 1, size => 24 },
  "exhaust",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "flow",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "force",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "gasket",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "hose_barb",
  { data_type => "varchar", is_nullable => 1, size => 24 },
  "input_psi",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "length",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "max_psi",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "medium",
  { data_type => "varchar", is_nullable => 1, size => 24 },
  "mount",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "nut_supplied",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "ports",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "power_con",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "power_factor",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "response",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "rod",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "rod_dia",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "seals",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "spring_force_ext",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "spring_force_re",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "stem_travel",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "stroke",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "temper",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "thread",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "travel_arc",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "voltage",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "img1_html",
  { data_type => "text", is_nullable => 1 },
  "img2_html",
  { data_type => "text", is_nullable => 1 },
  "img3_html",
  { data_type => "text", is_nullable => 1 },
  "img4_html",
  { data_type => "text", is_nullable => 1 },
  "img5_html",
  { data_type => "text", is_nullable => 1 },
  "img6_html",
  { data_type => "text", is_nullable => 1 },
  "new_change_user_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("prod_no");

=head1 RELATIONS

=head2 prod_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductList>

=cut

__PACKAGE__->belongs_to(
  "prod_no",
  "Schema::Hp3k::Result::ProductList",
  { prod_no => "prod_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:m2leiw16q9T5CADyXG2Izg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
