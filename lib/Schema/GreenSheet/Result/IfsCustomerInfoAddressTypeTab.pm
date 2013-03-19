package Schema::GreenSheet::Result::IfsCustomerInfoAddressTypeTab;

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

Schema::GreenSheet::Result::IfsCustomerInfoAddressTypeTab

=cut

__PACKAGE__->table("ifs_customer_info_address_type_tab");

=head1 ACCESSORS

=head2 customer_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 address_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 address_type_code

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 party

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 def_address

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 default_domain

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 rowversion

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "customer_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "address_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "address_type_code",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "party",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "def_address",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "default_domain",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "rowversion",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("customer_id", "address_id", "address_type_code");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5IaTIyJqV/04vH7hGEf1Fg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
