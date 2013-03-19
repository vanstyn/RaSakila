package Schema::GreenSheet::Result::IfsCustomerInfoCommMethodTab;

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

Schema::GreenSheet::Result::IfsCustomerInfoCommMethodTab

=cut

__PACKAGE__->table("ifs_customer_info_comm_method_tab");

=head1 ACCESSORS

=head2 surrogate_11_customer_id7_comm_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 customer_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 comm_id

  data_type: 'bigint'
  is_nullable: 0

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 valid_from

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 valid_to

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 method_default

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 address_default

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 method_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 address_id

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 rowversion

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "surrogate_11_customer_id7_comm_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "customer_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "comm_id",
  { data_type => "bigint", is_nullable => 0 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 200 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "valid_from",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "valid_to",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "method_default",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "address_default",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "method_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "address_id",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "rowversion",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);
__PACKAGE__->set_primary_key("surrogate_11_customer_id7_comm_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GDnUM/krZOJIb9U+2MR/wg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
