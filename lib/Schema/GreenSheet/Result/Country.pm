package Schema::GreenSheet::Result::Country;

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

Schema::GreenSheet::Result::Country

=cut

__PACKAGE__->table("country");

=head1 ACCESSORS

=head2 country

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 code

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 order

  data_type: 'integer'
  default_value: 1000
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "country",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "code",
  { data_type => "char", is_nullable => 1, size => 3 },
  "order",
  { data_type => "integer", default_value => 1000, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("country");

=head1 RELATIONS

=head2 companies

Type: has_many

Related object: L<Schema::GreenSheet::Result::Company>

=cut

__PACKAGE__->has_many(
  "companies",
  "Schema::GreenSheet::Result::Company",
  { "foreign.country" => "self.country" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contacts

Type: has_many

Related object: L<Schema::GreenSheet::Result::Contact>

=cut

__PACKAGE__->has_many(
  "contacts",
  "Schema::GreenSheet::Result::Contact",
  { "foreign.country" => "self.country" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 country_aliases

Type: has_many

Related object: L<Schema::GreenSheet::Result::CountryAlias>

=cut

__PACKAGE__->has_many(
  "country_aliases",
  "Schema::GreenSheet::Result::CountryAlias",
  { "foreign.country" => "self.country" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dist_regions

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistRegion>

=cut

__PACKAGE__->has_many(
  "dist_regions",
  "Schema::GreenSheet::Result::DistRegion",
  { "foreign.country" => "self.country" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_offices

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->has_many(
  "distributor_offices",
  "Schema::GreenSheet::Result::DistributorOffice",
  { "foreign.country" => "self.country" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 states

Type: has_many

Related object: L<Schema::GreenSheet::Result::State>

=cut

__PACKAGE__->has_many(
  "states",
  "Schema::GreenSheet::Result::State",
  { "foreign.country" => "self.country" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cwJmevfUGUmOH2KLeOYDrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
