package Schema::GreenSheet::Result::ZoneShipRate;

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

Schema::GreenSheet::Result::ZoneShipRate

=cut

__PACKAGE__->table("zone_ship_rate");

=head1 ACCESSORS

=head2 zone

  data_type: 'tinyint'
  is_nullable: 0

=head2 weight_lbs

  data_type: 'float'
  is_nullable: 0

=head2 price

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=cut

__PACKAGE__->add_columns(
  "zone",
  { data_type => "tinyint", is_nullable => 0 },
  "weight_lbs",
  { data_type => "float", is_nullable => 0 },
  "price",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
);
__PACKAGE__->set_primary_key("zone", "weight_lbs");

=head1 RELATIONS

=head2 dist_regions

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistRegion>

=cut

__PACKAGE__->has_many(
  "dist_regions",
  "Schema::GreenSheet::Result::DistRegion",
  { "foreign.zone452" => "self.zone" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:buBhEilIWuF1X9D0POTY2Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
