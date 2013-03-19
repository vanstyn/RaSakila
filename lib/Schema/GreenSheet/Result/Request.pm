package Schema::GreenSheet::Result::Request;

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

Schema::GreenSheet::Result::Request

=cut

__PACKAGE__->table("request");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 timestamp

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 client_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 client_hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 uri

  data_type: 'varchar'
  is_nullable: 0
  size: 512

=head2 method

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 user_agent

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 referer

  data_type: 'varchar'
  is_nullable: 1
  size: 512

=head2 serialized_request

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "timestamp",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "client_ip",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "client_hostname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "uri",
  { data_type => "varchar", is_nullable => 0, size => 512 },
  "method",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "user_agent",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "referer",
  { data_type => "varchar", is_nullable => 1, size => 512 },
  "serialized_request",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 aim_leads

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimLead>

=cut

__PACKAGE__->has_many(
  "aim_leads",
  "Schema::GreenSheet::Result::AimLead",
  { "foreign.request_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 request_to_aim_campaigns

Type: has_many

Related object: L<Schema::GreenSheet::Result::RequestToAimCampaign>

=cut

__PACKAGE__->has_many(
  "request_to_aim_campaigns",
  "Schema::GreenSheet::Result::RequestToAimCampaign",
  { "foreign.request_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sync_wwws

Type: has_many

Related object: L<Schema::GreenSheet::Result::SyncWww>

=cut

__PACKAGE__->has_many(
  "sync_wwws",
  "Schema::GreenSheet::Result::SyncWww",
  { "foreign.update_request_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:H00FzOSpYq6YToNErwDTQw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
