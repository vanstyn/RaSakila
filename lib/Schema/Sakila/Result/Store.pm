package Schema::Sakila::Result::Store;

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

Schema::Sakila::Result::Store

=cut

__PACKAGE__->table("store");

=head1 ACCESSORS

=head2 store_id

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 manager_staff_id

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 address_id

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 last_update

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "store_id",
  {
    data_type => "tinyint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "manager_staff_id",
  {
    data_type => "tinyint",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "address_id",
  {
    data_type => "smallint",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "last_update",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("store_id");
__PACKAGE__->add_unique_constraint("idx_unique_manager", ["manager_staff_id"]);

=head1 RELATIONS

=head2 customers

Type: has_many

Related object: L<Schema::Sakila::Result::Customer>

=cut

__PACKAGE__->has_many(
  "customers",
  "Schema::Sakila::Result::Customer",
  { "foreign.store_id" => "self.store_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 inventories

Type: has_many

Related object: L<Schema::Sakila::Result::Inventory>

=cut

__PACKAGE__->has_many(
  "inventories",
  "Schema::Sakila::Result::Inventory",
  { "foreign.store_id" => "self.store_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 staffs

Type: has_many

Related object: L<Schema::Sakila::Result::Staff>

=cut

__PACKAGE__->has_many(
  "staffs",
  "Schema::Sakila::Result::Staff",
  { "foreign.store_id" => "self.store_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 address

Type: belongs_to

Related object: L<Schema::Sakila::Result::Address>

=cut

__PACKAGE__->belongs_to(
  "address",
  "Schema::Sakila::Result::Address",
  { address_id => "address_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 manager_staff

Type: belongs_to

Related object: L<Schema::Sakila::Result::Staff>

=cut

__PACKAGE__->belongs_to(
  "manager_staff",
  "Schema::Sakila::Result::Staff",
  { staff_id => "manager_staff_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:09:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oQE725YUnitspMoO90yyJw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
