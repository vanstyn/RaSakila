package Schema::ItsInventory::Result::Location;

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

Schema::ItsInventory::Result::Location

=cut

__PACKAGE__->table("locations");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 street

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 zip

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 default

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 client_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 created_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 updated_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 deleted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "street",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "zip",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "default",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "client_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "created_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "updated_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "deleted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 items

Type: has_many

Related object: L<Schema::ItsInventory::Result::Item>

=cut

__PACKAGE__->has_many(
  "items",
  "Schema::ItsInventory::Result::Item",
  { "foreign.location_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 client

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Client>

=cut

__PACKAGE__->belongs_to(
  "client",
  "Schema::ItsInventory::Result::Client",
  { id => "client_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-16 12:33:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6T4HqqT9CZLYw1XFx+WzFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
