package Schema::GreenSheet::Result::IfsCustomerInfoAddressTab;

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

Schema::GreenSheet::Result::IfsCustomerInfoAddressTab

=cut

__PACKAGE__->table("ifs_customer_info_address_tab");

=head1 ACCESSORS

=head2 surrogate_11_customer_id10_address_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 customer_id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 address_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 address

  data_type: 'text'
  is_nullable: 1

=head2 ean_location

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 valid_from

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 primary_contact

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 valid_to

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 secondary_contact

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 party

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 default_domain

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 country

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 party_type

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 address1

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 address2

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 zip_code

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 county

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 in_city

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 jurisdiction_code

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 rowversion

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "surrogate_11_customer_id10_address_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "customer_id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "address_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "address",
  { data_type => "text", is_nullable => 1 },
  "ean_location",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "valid_from",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "primary_contact",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "valid_to",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "secondary_contact",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "party",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "default_domain",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "country",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "party_type",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "address1",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "address2",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "zip_code",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "county",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "in_city",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "jurisdiction_code",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "rowversion",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("surrogate_11_customer_id10_address_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PGChSdncXaFwMxR0bLHbyw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
