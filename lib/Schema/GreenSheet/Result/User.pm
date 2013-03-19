package Schema::GreenSheet::Result::User;

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

Schema::GreenSheet::Result::User

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 username

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 pwd

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 full_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 last_login_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 disabled

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 disabled_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
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
  "username",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "pwd",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "full_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "last_login_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "disabled",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "disabled_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("username", ["username"]);

=head1 RELATIONS

=head2 audit_change_sets

Type: has_many

Related object: L<Schema::GreenSheet::Result::AuditChangeSet>

=cut

__PACKAGE__->has_many(
  "audit_change_sets",
  "Schema::GreenSheet::Result::AuditChangeSet",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_offices

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->has_many(
  "distributor_offices",
  "Schema::GreenSheet::Result::DistributorOffice",
  { "foreign.rsm_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 exceptions

Type: has_many

Related object: L<Schema::GreenSheet::Result::Exception>

=cut

__PACKAGE__->has_many(
  "exceptions",
  "Schema::GreenSheet::Result::Exception",
  { "foreign.who" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 global_properties

Type: has_many

Related object: L<Schema::GreenSheet::Result::GlobalProperty>

=cut

__PACKAGE__->has_many(
  "global_properties",
  "Schema::GreenSheet::Result::GlobalProperty",
  { "foreign.update_user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 global_property_revisions

Type: has_many

Related object: L<Schema::GreenSheet::Result::GlobalPropertyRevision>

=cut

__PACKAGE__->has_many(
  "global_property_revisions",
  "Schema::GreenSheet::Result::GlobalPropertyRevision",
  { "foreign.update_user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 object_owners

Type: has_many

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->has_many(
  "object_owners",
  "Schema::GreenSheet::Result::Object",
  { "foreign.owner_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 object_creators

Type: has_many

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->has_many(
  "object_creators",
  "Schema::GreenSheet::Result::Object",
  { "foreign.creator_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 object_updaters

Type: has_many

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->has_many(
  "object_updaters",
  "Schema::GreenSheet::Result::Object",
  { "foreign.updater_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 processes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Process>

=cut

__PACKAGE__->has_many(
  "processes",
  "Schema::GreenSheet::Result::Process",
  { "foreign.process_owner_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 process_trainings

Type: has_many

Related object: L<Schema::GreenSheet::Result::ProcessTraining>

=cut

__PACKAGE__->has_many(
  "process_trainings",
  "Schema::GreenSheet::Result::ProcessTraining",
  { "foreign.created_by_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project_engineer2_users

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_engineer2_users",
  "Schema::GreenSheet::Result::Project",
  { "foreign.engineer2_user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project_engineer_users

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_engineer_users",
  "Schema::GreenSheet::Result::Project",
  { "foreign.engineer_user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project_pricing_updated_users

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "project_pricing_updated_users",
  "Schema::GreenSheet::Result::Project",
  { "foreign.pricing_updated_user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quotes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Quote>

=cut

__PACKAGE__->has_many(
  "quotes",
  "Schema::GreenSheet::Result::Quote",
  { "foreign.rsm_user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sync_wwws

Type: has_many

Related object: L<Schema::GreenSheet::Result::SyncWww>

=cut

__PACKAGE__->has_many(
  "sync_wwws",
  "Schema::GreenSheet::Result::SyncWww",
  { "foreign.user_id" => "self.id" },
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

=head2 user_to_roles

Type: has_many

Related object: L<Schema::GreenSheet::Result::UserToRole>

=cut

__PACKAGE__->has_many(
  "user_to_roles",
  "Schema::GreenSheet::Result::UserToRole",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lC1/7czqSMeR7j/F2oHjbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
