package Schema::GreenSheet::Result::Object;

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

Schema::GreenSheet::Result::Object

=cut

__PACKAGE__->table("object");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 disp_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 icon_cls

  data_type: 'varchar'
  default_value: 'icon-cube-molecule'
  is_nullable: 0
  size: 255

=head2 type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 owner_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 creator_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 created_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 updater_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 updated_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 public

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 private

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 read_only

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 parent_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 has_children

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 meta_data

  data_type: 'text'
  is_nullable: 1

=head2 old_id

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "disp_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "icon_cls",
  {
    data_type => "varchar",
    default_value => "icon-cube-molecule",
    is_nullable => 0,
    size => 255,
  },
  "type_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "owner_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "creator_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "created_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "updater_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "updated_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "public",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "private",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "read_only",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "parent_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "has_children",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "meta_data",
  { data_type => "text", is_nullable => 1 },
  "old_id",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 aim_ad

Type: might_have

Related object: L<Schema::GreenSheet::Result::AimAd>

=cut

__PACKAGE__->might_have(
  "aim_ad",
  "Schema::GreenSheet::Result::AimAd",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_campaign

Type: might_have

Related object: L<Schema::GreenSheet::Result::AimCampaign>

=cut

__PACKAGE__->might_have(
  "aim_campaign",
  "Schema::GreenSheet::Result::AimCampaign",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_contact

Type: might_have

Related object: L<Schema::GreenSheet::Result::AimContact>

=cut

__PACKAGE__->might_have(
  "aim_contact",
  "Schema::GreenSheet::Result::AimContact",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_follow_up

Type: might_have

Related object: L<Schema::GreenSheet::Result::AimFollowUp>

=cut

__PACKAGE__->might_have(
  "aim_follow_up",
  "Schema::GreenSheet::Result::AimFollowUp",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_lead

Type: might_have

Related object: L<Schema::GreenSheet::Result::AimLead>

=cut

__PACKAGE__->might_have(
  "aim_lead",
  "Schema::GreenSheet::Result::AimLead",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_media

Type: might_have

Related object: L<Schema::GreenSheet::Result::AimMedia>

=cut

__PACKAGE__->might_have(
  "aim_media",
  "Schema::GreenSheet::Result::AimMedia",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 attachment

Type: might_have

Related object: L<Schema::GreenSheet::Result::Attachment>

=cut

__PACKAGE__->might_have(
  "attachment",
  "Schema::GreenSheet::Result::Attachment",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 company

Type: might_have

Related object: L<Schema::GreenSheet::Result::Company>

=cut

__PACKAGE__->might_have(
  "company",
  "Schema::GreenSheet::Result::Company",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contact

Type: might_have

Related object: L<Schema::GreenSheet::Result::Contact>

=cut

__PACKAGE__->might_have(
  "contact",
  "Schema::GreenSheet::Result::Contact",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cron_logs

Type: has_many

Related object: L<Schema::GreenSheet::Result::CronLog>

=cut

__PACKAGE__->has_many(
  "cron_logs",
  "Schema::GreenSheet::Result::CronLog",
  { "foreign.object_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor

Type: might_have

Related object: L<Schema::GreenSheet::Result::Distributor>

=cut

__PACKAGE__->might_have(
  "distributor",
  "Schema::GreenSheet::Result::Distributor",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_office

Type: might_have

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->might_have(
  "distributor_office",
  "Schema::GreenSheet::Result::DistributorOffice",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_salesperson

Type: might_have

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->might_have(
  "distributor_salesperson",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 emails

Type: has_many

Related object: L<Schema::GreenSheet::Result::Email>

=cut

__PACKAGE__->has_many(
  "emails",
  "Schema::GreenSheet::Result::Email",
  { "foreign.object_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 employee

Type: might_have

Related object: L<Schema::GreenSheet::Result::Employee>

=cut

__PACKAGE__->might_have(
  "employee",
  "Schema::GreenSheet::Result::Employee",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 note

Type: might_have

Related object: L<Schema::GreenSheet::Result::Note>

=cut

__PACKAGE__->might_have(
  "note",
  "Schema::GreenSheet::Result::Note",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 obj_relations_left

Type: has_many

Related object: L<Schema::GreenSheet::Result::ObjRelation>

=cut

__PACKAGE__->has_many(
  "obj_relations_left",
  "Schema::GreenSheet::Result::ObjRelation",
  { "foreign.left_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 obj_relation_rights

Type: has_many

Related object: L<Schema::GreenSheet::Result::ObjRelation>

=cut

__PACKAGE__->has_many(
  "obj_relation_rights",
  "Schema::GreenSheet::Result::ObjRelation",
  { "foreign.right_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::ObjectType>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::GreenSheet::Result::ObjectType",
  { id => "type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 parent

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "parent",
  "Schema::GreenSheet::Result::Object",
  { id => "parent_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 objects

Type: has_many

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->has_many(
  "objects",
  "Schema::GreenSheet::Result::Object",
  { "foreign.parent_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 owner

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "owner",
  "Schema::GreenSheet::Result::User",
  { id => "owner_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 creator

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "creator",
  "Schema::GreenSheet::Result::User",
  { id => "creator_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 updater

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "updater",
  "Schema::GreenSheet::Result::User",
  { id => "updater_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 process

Type: might_have

Related object: L<Schema::GreenSheet::Result::Process>

=cut

__PACKAGE__->might_have(
  "process",
  "Schema::GreenSheet::Result::Process",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 project

Type: might_have

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->might_have(
  "project",
  "Schema::GreenSheet::Result::Project",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quote

Type: might_have

Related object: L<Schema::GreenSheet::Result::Quote>

=cut

__PACKAGE__->might_have(
  "quote",
  "Schema::GreenSheet::Result::Quote",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 saved_state

Type: might_have

Related object: L<Schema::GreenSheet::Result::SavedState>

=cut

__PACKAGE__->might_have(
  "saved_state",
  "Schema::GreenSheet::Result::SavedState",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user

Type: might_have

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->might_have(
  "user",
  "Schema::GreenSheet::Result::User",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Fz7nKPY+2slsINQDe4hHIA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
