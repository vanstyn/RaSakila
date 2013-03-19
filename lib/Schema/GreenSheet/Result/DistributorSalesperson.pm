package Schema::GreenSheet::Result::DistributorSalesperson;

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

Schema::GreenSheet::Result::DistributorSalesperson

=cut

__PACKAGE__->table("distributor_salesperson");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_office_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 display_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 slsp_status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 receive_leads

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 receive_orders

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 receive_invoices

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 permit_login

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 distributor_manager

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 permit_login_expire_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 email_code_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_office_id",
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
    is_nullable => 1,
  },
  "display_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "slsp_status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "receive_leads",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "receive_orders",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "receive_invoices",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "permit_login",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "distributor_manager",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "permit_login_expire_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "email_code_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

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

=head2 dist_office

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->belongs_to(
  "dist_office",
  "Schema::GreenSheet::Result::DistributorOffice",
  { id => "dist_office_id" },
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
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 slsp_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorStatus>

=cut

__PACKAGE__->belongs_to(
  "slsp_status",
  "Schema::GreenSheet::Result::DistributorStatus",
  { id => "slsp_status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 email_code

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistEmailCode>

=cut

__PACKAGE__->belongs_to(
  "email_code",
  "Schema::GreenSheet::Result::DistEmailCode",
  { id => "email_code_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 project_dist2_salespeople

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_dist2_salespeople",
  "Schema::GreenSheet::Result::Project",
  { "foreign.dist2_salesperson_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project_dist1_salespeople

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_dist1_salespeople",
  "Schema::GreenSheet::Result::Project",
  { "foreign.dist1_salesperson_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quotes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Quote>

=cut

__PACKAGE__->has_many(
  "quotes",
  "Schema::GreenSheet::Result::Quote",
  { "foreign.dist_salesperson_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Z7grN1+dasqbzHt225GL1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
