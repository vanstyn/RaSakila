package Schema::GreenSheet::Result::LatestDistInfo;

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

Schema::GreenSheet::Result::LatestDistInfo

=cut

__PACKAGE__->table("latest_dist_info");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 order

  data_type: 'integer'
  default_value: 10
  extra: {unsigned => 1}
  is_nullable: 1

=head2 content

  data_type: 'text'
  is_nullable: 1

=head2 link_url

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 visible

  data_type: 'tinyint'
  default_value: 1
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
  "order",
  {
    data_type => "integer",
    default_value => 10,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "content",
  { data_type => "text", is_nullable => 1 },
  "link_url",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "visible",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WHRqLer1z6g8V31uZmEBHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
