package Schema::GreenSheet::Result::AimMedia;

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

Schema::GreenSheet::Result::AimMedia

=cut

__PACKAGE__->table("aim_media");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 media_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 letter_insert

  data_type: 'text'
  is_nullable: 1

=head2 primary_contact_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 media_abrv

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "media_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "letter_insert",
  { data_type => "text", is_nullable => 1 },
  "primary_contact_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "media_abrv",
  { data_type => "varchar", is_nullable => 0, size => 20 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("media_abrv", ["media_abrv"]);

=head1 RELATIONS

=head2 aim_campaigns

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimCampaign>

=cut

__PACKAGE__->has_many(
  "aim_campaigns",
  "Schema::GreenSheet::Result::AimCampaign",
  { "foreign.aim_media_id" => "self.id" },
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

=head2 primary_contact

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Contact>

=cut

__PACKAGE__->belongs_to(
  "primary_contact",
  "Schema::GreenSheet::Result::Contact",
  { id => "primary_contact_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mcViWN7v+5iY7LkO3QBvQg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
