package Schema::GreenSheet::Result::DistributorOffice;

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

Schema::GreenSheet::Result::DistributorOffice

=cut

__PACKAGE__->table("distributor_office");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 office_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 rsm_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 office_type_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 office_status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 address1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address3

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 state

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 63

=head2 zip

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 phone

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 fax

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 country

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 96

=head2 date_opened

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 salesman_code

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 carrier

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 cust_ref_code

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "office_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "rsm_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "office_type_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "office_status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "address1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address3",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "state",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 63 },
  "zip",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "phone",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "fax",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "country",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 96 },
  "date_opened",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "salesman_code",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "carrier",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "cust_ref_code",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 aims_follow_up

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimFollowUp>

=cut

__PACKAGE__->has_many(
  "aims_follow_up",
  "Schema::GreenSheet::Result::AimFollowUp",
  { "foreign.dist_office_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 dist_to_regions

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistToRegion>

=cut

__PACKAGE__->has_many(
  "dist_to_regions",
  "Schema::GreenSheet::Result::DistToRegion",
  { "foreign.dist_office_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 id

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "id",
  "Schema::GreenSheet::Result::Object",
  { id => "id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dist

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Distributor>

=cut

__PACKAGE__->belongs_to(
  "dist",
  "Schema::GreenSheet::Result::Distributor",
  { id => "dist_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 rsm

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "rsm",
  "Schema::GreenSheet::Result::User",
  { id => "rsm_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 office_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorType>

=cut

__PACKAGE__->belongs_to(
  "office_type",
  "Schema::GreenSheet::Result::DistributorType",
  { id => "office_type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 office_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorStatus>

=cut

__PACKAGE__->belongs_to(
  "office_status",
  "Schema::GreenSheet::Result::DistributorStatus",
  { id => "office_status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

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
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 distributor_salespeople

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->has_many(
  "distributor_salespeople",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { "foreign.dist_office_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project_dist1s

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_dist1s",
  "Schema::GreenSheet::Result::Project",
  { "foreign.dist1_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project_dist2s

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_dist2s",
  "Schema::GreenSheet::Result::Project",
  { "foreign.dist2_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quotes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Quote>

=cut

__PACKAGE__->has_many(
  "quotes",
  "Schema::GreenSheet::Result::Quote",
  { "foreign.dist_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cd2j0UjvLqZvEKrpRl6zkA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
