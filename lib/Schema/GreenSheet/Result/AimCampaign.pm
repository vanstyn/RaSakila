package Schema::GreenSheet::Result::AimCampaign;

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

Schema::GreenSheet::Result::AimCampaign

=cut

__PACKAGE__->table("aim_campaign");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 aim_ad_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 aim_media_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 campaign_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 start_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 ad_needed_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 ad_sent_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 clicks

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cost

  data_type: 'float'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 campaign_position

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 campaign_notes

  data_type: 'text'
  is_nullable: 1

=head2 calc_cost_per_lead

  data_type: 'float'
  is_nullable: 1

=head2 calc_cost_per_lead_click

  data_type: 'float'
  is_nullable: 1

=head2 campaign_active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 deep_link_code

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 deep_link_target

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 website_dropdown

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 public_title

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "aim_ad_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "aim_media_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "campaign_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "start_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 0 },
  "ad_needed_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "ad_sent_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "clicks",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cost",
  {
    data_type => "float",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "campaign_position",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "campaign_notes",
  { data_type => "text", is_nullable => 1 },
  "calc_cost_per_lead",
  { data_type => "float", is_nullable => 1 },
  "calc_cost_per_lead_click",
  { data_type => "float", is_nullable => 1 },
  "campaign_active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "deep_link_code",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "deep_link_target",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "website_dropdown",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "public_title",
  { data_type => "varchar", is_nullable => 1, size => 64 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("deep_link_code", ["deep_link_code"]);

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

=head2 aim_ad

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimAd>

=cut

__PACKAGE__->belongs_to(
  "aim_ad",
  "Schema::GreenSheet::Result::AimAd",
  { id => "aim_ad_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 aim_media

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimMedia>

=cut

__PACKAGE__->belongs_to(
  "aim_media",
  "Schema::GreenSheet::Result::AimMedia",
  { id => "aim_media_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 campaign_position

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimCampaignPosition>

=cut

__PACKAGE__->belongs_to(
  "campaign_position",
  "Schema::GreenSheet::Result::AimCampaignPosition",
  { position => "campaign_position" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 aim_campaign_to_literatures

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimCampaignToLiterature>

=cut

__PACKAGE__->has_many(
  "aim_campaign_to_literatures",
  "Schema::GreenSheet::Result::AimCampaignToLiterature",
  { "foreign.aim_campaign_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_leads

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimLead>

=cut

__PACKAGE__->has_many(
  "aim_leads",
  "Schema::GreenSheet::Result::AimLead",
  { "foreign.aim_campaign_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 request_to_aim_campaigns

Type: has_many

Related object: L<Schema::GreenSheet::Result::RequestToAimCampaign>

=cut

__PACKAGE__->has_many(
  "request_to_aim_campaigns",
  "Schema::GreenSheet::Result::RequestToAimCampaign",
  { "foreign.aim_campaign_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yUq6cMZI5D5vuaf5E/3Yvw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
