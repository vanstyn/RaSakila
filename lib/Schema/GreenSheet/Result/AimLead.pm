package Schema::GreenSheet::Result::AimLead;

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

Schema::GreenSheet::Result::AimLead

=cut

__PACKAGE__->table("aim_lead");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 aim_contact_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 aim_campaign_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 lead_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 lead_type

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 255

=head2 lead_origin_id

  data_type: 'varchar'
  default_value: 'other'
  is_foreign_key: 1
  is_nullable: 0
  size: 32

=head2 lead_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 date_lit_sent

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 calc_lit_ship_cost

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 calc_lit_tot_weight_lbs

  data_type: 'float'
  is_nullable: 1

=head2 calc_lit_ship_zone

  data_type: 'tinyint'
  is_nullable: 1

=head2 how_hear

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 how_hear_explain

  data_type: 'text'
  is_nullable: 1

=head2 create_follow_ups

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 lead_notes

  data_type: 'text'
  is_nullable: 1

=head2 request_id

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
  "aim_contact_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "aim_campaign_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "lead_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "lead_type",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 255 },
  "lead_origin_id",
  {
    data_type => "varchar",
    default_value => "other",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 32,
  },
  "lead_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "date_lit_sent",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "calc_lit_ship_cost",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "calc_lit_tot_weight_lbs",
  { data_type => "float", is_nullable => 1 },
  "calc_lit_ship_zone",
  { data_type => "tinyint", is_nullable => 1 },
  "how_hear",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "how_hear_explain",
  { data_type => "text", is_nullable => 1 },
  "create_follow_ups",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "lead_notes",
  { data_type => "text", is_nullable => 1 },
  "request_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
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
  { "foreign.aim_lead_id" => "self.id" },
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

=head2 aim_contact

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimContact>

=cut

__PACKAGE__->belongs_to(
  "aim_contact",
  "Schema::GreenSheet::Result::AimContact",
  { id => "aim_contact_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 aim_campaign

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimCampaign>

=cut

__PACKAGE__->belongs_to(
  "aim_campaign",
  "Schema::GreenSheet::Result::AimCampaign",
  { id => "aim_campaign_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 lead_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimLeadType>

=cut

__PACKAGE__->belongs_to(
  "lead_type",
  "Schema::GreenSheet::Result::AimLeadType",
  { type => "lead_type" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 how_hear

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimHowHear>

=cut

__PACKAGE__->belongs_to(
  "how_hear",
  "Schema::GreenSheet::Result::AimHowHear",
  { how_hear => "how_hear" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 request

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Request>

=cut

__PACKAGE__->belongs_to(
  "request",
  "Schema::GreenSheet::Result::Request",
  { id => "request_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 lead_origin

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimLeadOrigin>

=cut

__PACKAGE__->belongs_to(
  "lead_origin",
  "Schema::GreenSheet::Result::AimLeadOrigin",
  { id => "lead_origin_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 aim_lead_to_literatures

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimLeadToLiterature>

=cut

__PACKAGE__->has_many(
  "aim_lead_to_literatures",
  "Schema::GreenSheet::Result::AimLeadToLiterature",
  { "foreign.aim_lead_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uONo1Ale3TUznskWHoKBLA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
