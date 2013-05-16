package Schema::ItsInventory::Result::Item;

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

Schema::ItsInventory::Result::Item

=cut

__PACKAGE__->table("items");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 category_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 upc

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 cost

  data_type: 'float'
  is_nullable: 1

=head2 aquired_on

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 released_on

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 created_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 updated_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 serial_number

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 asset_tag_affixed

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 status_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 location_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 aquired_transaction_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 release_transaction_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 quantity

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 purchase_id

  data_type: 'integer'
  is_nullable: 1

=head2 item_group_id

  data_type: 'integer'
  is_nullable: 1

=head2 bulk_item_id

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "category_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "upc",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "cost",
  { data_type => "float", is_nullable => 1 },
  "aquired_on",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "released_on",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
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
  "serial_number",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "asset_tag_affixed",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "status_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "location_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "aquired_transaction_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "release_transaction_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "quantity",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "purchase_id",
  { data_type => "integer", is_nullable => 1 },
  "item_group_id",
  { data_type => "integer", is_nullable => 1 },
  "bulk_item_id",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Category>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Schema::ItsInventory::Result::Category",
  { id => "category_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 status

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Statuse>

=cut

__PACKAGE__->belongs_to(
  "status",
  "Schema::ItsInventory::Result::Statuse",
  { id => "status_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 location

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Location>

=cut

__PACKAGE__->belongs_to(
  "location",
  "Schema::ItsInventory::Result::Location",
  { id => "location_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 aquired_transaction

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Transaction>

=cut

__PACKAGE__->belongs_to(
  "aquired_transaction",
  "Schema::ItsInventory::Result::Transaction",
  { id => "aquired_transaction_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 release_transaction

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Transaction>

=cut

__PACKAGE__->belongs_to(
  "release_transaction",
  "Schema::ItsInventory::Result::Transaction",
  { id => "release_transaction_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 transactions

Type: has_many

Related object: L<Schema::ItsInventory::Result::Transaction>

=cut

__PACKAGE__->has_many(
  "transactions",
  "Schema::ItsInventory::Result::Transaction",
  { "foreign.item_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-16 12:33:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s6WtsInfyu2PMp+wzZuTIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
