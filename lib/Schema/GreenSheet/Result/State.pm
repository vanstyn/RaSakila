package Schema::GreenSheet::Result::State;

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

Schema::GreenSheet::Result::State

=cut

__PACKAGE__->table("state");

=head1 ACCESSORS

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 abbr

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 country

  data_type: 'varchar'
  default_value: 'UNKNOWN COUNTRY'
  is_foreign_key: 1
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "state",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "abbr",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "country",
  {
    data_type => "varchar",
    default_value => "UNKNOWN COUNTRY",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 64,
  },
);
__PACKAGE__->set_primary_key("state");
__PACKAGE__->add_unique_constraint("abbr", ["abbr"]);

=head1 RELATIONS

=head2 companies

Type: has_many

Related object: L<Schema::GreenSheet::Result::Company>

=cut

__PACKAGE__->has_many(
  "companies",
  "Schema::GreenSheet::Result::Company",
  { "foreign.state" => "self.state" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contacts

Type: has_many

Related object: L<Schema::GreenSheet::Result::Contact>

=cut

__PACKAGE__->has_many(
  "contacts",
  "Schema::GreenSheet::Result::Contact",
  { "foreign.state" => "self.state" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dist_regions

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistRegion>

=cut

__PACKAGE__->has_many(
  "dist_regions",
  "Schema::GreenSheet::Result::DistRegion",
  { "foreign.state" => "self.state" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_offices

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->has_many(
  "distributor_offices",
  "Schema::GreenSheet::Result::DistributorOffice",
  { "foreign.state" => "self.state" },
  { cascade_copy => 0, cascade_delete => 0 },
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

=head2 state_aliases

Type: has_many

Related object: L<Schema::GreenSheet::Result::StateAlias>

=cut

__PACKAGE__->has_many(
  "state_aliases",
  "Schema::GreenSheet::Result::StateAlias",
  { "foreign.state" => "self.state" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:u5/l23mi8fs1Apg4UxX0VQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
