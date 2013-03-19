package Schema::GreenSheet::Result::AimAd;

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

Schema::GreenSheet::Result::AimAd

=cut

__PACKAGE__->table("aim_ad");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 ad_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ad_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 letter_insert

  data_type: 'text'
  is_nullable: 1

=head2 ad_notes

  data_type: 'text'
  is_nullable: 1

=head2 ad_details

  data_type: 'text'
  is_nullable: 1

=head2 ad_type

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 255

=head2 ad_size

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 prod_no

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pc1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pc2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ad_active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "ad_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ad_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "letter_insert",
  { data_type => "text", is_nullable => 1 },
  "ad_notes",
  { data_type => "text", is_nullable => 1 },
  "ad_details",
  { data_type => "text", is_nullable => 1 },
  "ad_type",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 255 },
  "ad_size",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "prod_no",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pc1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pc2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ad_active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
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

=head2 ad_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimAdType>

=cut

__PACKAGE__->belongs_to(
  "ad_type",
  "Schema::GreenSheet::Result::AimAdType",
  { type => "ad_type" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 ad_size

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimAdSize>

=cut

__PACKAGE__->belongs_to(
  "ad_size",
  "Schema::GreenSheet::Result::AimAdSize",
  { size => "ad_size" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 aim_campaigns

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimCampaign>

=cut

__PACKAGE__->has_many(
  "aim_campaigns",
  "Schema::GreenSheet::Result::AimCampaign",
  { "foreign.aim_ad_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bPTbSV2Heoe2g+M9nDiyaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
