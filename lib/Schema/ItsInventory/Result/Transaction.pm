package Schema::ItsInventory::Result::Transaction;

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

Schema::ItsInventory::Result::Transaction

=cut

__PACKAGE__->table("transactions");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 item_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 price

  data_type: 'float'
  is_nullable: 1

=head2 taxes_paid

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 quantity

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 client_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 vendor_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 transaction_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 expense_item

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 summary

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 note_id

  data_type: 'integer'
  is_nullable: 1

=head2 created_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 updated_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "item_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "price",
  { data_type => "float", is_nullable => 1 },
  "taxes_paid",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "quantity",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "client_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "vendor_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "transaction_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "expense_item",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "summary",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "note_id",
  { data_type => "integer", is_nullable => 1 },
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
  "type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 items_aquired_transactions

Type: has_many

Related object: L<Schema::ItsInventory::Result::Item>

=cut

__PACKAGE__->has_many(
  "items_aquired_transactions",
  "Schema::ItsInventory::Result::Item",
  { "foreign.aquired_transaction_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 items_release_transactions

Type: has_many

Related object: L<Schema::ItsInventory::Result::Item>

=cut

__PACKAGE__->has_many(
  "items_release_transactions",
  "Schema::ItsInventory::Result::Item",
  { "foreign.release_transaction_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 item

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Item>

=cut

__PACKAGE__->belongs_to(
  "item",
  "Schema::ItsInventory::Result::Item",
  { id => "item_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 user

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Schema::ItsInventory::Result::User",
  { id => "user_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
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

=head2 vendor

Type: belongs_to

Related object: L<Schema::ItsInventory::Result::Vendor>

=cut

__PACKAGE__->belongs_to(
  "vendor",
  "Schema::ItsInventory::Result::Vendor",
  { id => "vendor_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-16 12:33:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZA+d+MsE4/E+p1q+tIMpYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
