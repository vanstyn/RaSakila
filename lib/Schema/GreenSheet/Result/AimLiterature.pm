package Schema::GreenSheet::Result::AimLiterature;

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

Schema::GreenSheet::Result::AimLiterature

=cut

__PACKAGE__->table("aim_literature");

=head1 ACCESSORS

=head2 literature

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 weight_lbs

  data_type: 'float'
  is_nullable: 0

=head2 image_html

  data_type: 'text'
  is_nullable: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 code

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 online

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "literature",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "weight_lbs",
  { data_type => "float", is_nullable => 0 },
  "image_html",
  { data_type => "text", is_nullable => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "code",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "online",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("literature");

=head1 RELATIONS

=head2 aim_campaign_to_literatures

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimCampaignToLiterature>

=cut

__PACKAGE__->has_many(
  "aim_campaign_to_literatures",
  "Schema::GreenSheet::Result::AimCampaignToLiterature",
  { "foreign.literature" => "self.literature" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aim_lead_to_literatures

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimLeadToLiterature>

=cut

__PACKAGE__->has_many(
  "aim_lead_to_literatures",
  "Schema::GreenSheet::Result::AimLeadToLiterature",
  { "foreign.literature" => "self.literature" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hRdQPplX36WugdrWnsjL8w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
