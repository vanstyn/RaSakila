package Schema::GreenSheet::Result::RequestToAimCampaign;

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

Schema::GreenSheet::Result::RequestToAimCampaign

=cut

__PACKAGE__->table("request_to_aim_campaign");

=head1 ACCESSORS

=head2 request_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 aim_campaign_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 returned_target

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "request_id",
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
  "returned_target",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("request_id", "aim_campaign_id");

=head1 RELATIONS

=head2 request

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Request>

=cut

__PACKAGE__->belongs_to(
  "request",
  "Schema::GreenSheet::Result::Request",
  { id => "request_id" },
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


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cIyeR4FhTd7RVT7rSb9x7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
