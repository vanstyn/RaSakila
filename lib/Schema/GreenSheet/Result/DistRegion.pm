package Schema::GreenSheet::Result::DistRegion;

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

Schema::GreenSheet::Result::DistRegion

=cut

__PACKAGE__->table("dist_region");

=head1 ACCESSORS

=head2 region

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 label

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 state

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 64

=head2 country

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 64

=head2 zip_prefix

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 zone452

  data_type: 'tinyint'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "region",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "label",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "state",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 64 },
  "country",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 64 },
  "zip_prefix",
  { data_type => "char", is_nullable => 1, size => 3 },
  "zone452",
  { data_type => "tinyint", is_foreign_key => 1, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("region");

=head1 RELATIONS

=head2 state

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::State>

=cut

__PACKAGE__->belongs_to(
  "state",
  "Schema::GreenSheet::Result::State",
  { state => "state" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 country

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Country>

=cut

__PACKAGE__->belongs_to(
  "country",
  "Schema::GreenSheet::Result::Country",
  { country => "country" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 zone452

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::ZoneShipRate>

=cut

__PACKAGE__->belongs_to(
  "zone452",
  "Schema::GreenSheet::Result::ZoneShipRate",
  { zone => "zone452" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 dist_to_regions

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistToRegion>

=cut

__PACKAGE__->has_many(
  "dist_to_regions",
  "Schema::GreenSheet::Result::DistToRegion",
  { "foreign.region_id" => "self.region" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:m52mSe55u4LcxK/Fg6+8xA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
