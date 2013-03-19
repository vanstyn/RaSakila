package Schema::Hp3k::Result::SoeShip;

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

Schema::Hp3k::Result::SoeShip

=cut

__PACKAGE__->table("SOE_SHIP");

=head1 ACCESSORS

=head2 order_no

  data_type: 'char'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=head2 cust_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 cname

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 address1

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 address2

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 address3

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 city

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 state

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 zip

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 country

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 flags_6_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 contact

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 tax_code

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 parent

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 filler14

  data_type: 'char'
  is_nullable: 1
  size: 14

=cut

__PACKAGE__->add_columns(
  "order_no",
  {
    data_type => "char",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 10,
  },
  "cust_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "cname",
  { data_type => "char", is_nullable => 1, size => 30 },
  "address1",
  { data_type => "char", is_nullable => 1, size => 30 },
  "address2",
  { data_type => "char", is_nullable => 1, size => 30 },
  "address3",
  { data_type => "char", is_nullable => 1, size => 30 },
  "city",
  { data_type => "char", is_nullable => 1, size => 20 },
  "state",
  { data_type => "char", is_nullable => 1, size => 2 },
  "zip",
  { data_type => "char", is_nullable => 1, size => 10 },
  "country",
  { data_type => "char", is_nullable => 1, size => 16 },
  "flags_6_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "contact",
  { data_type => "char", is_nullable => 1, size => 16 },
  "tax_code",
  { data_type => "char", is_nullable => 1, size => 10 },
  "parent",
  { data_type => "char", is_nullable => 1, size => 20 },
  "filler14",
  { data_type => "char", is_nullable => 1, size => 14 },
);
__PACKAGE__->set_primary_key("order_no");

=head1 RELATIONS

=head2 cust_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->belongs_to(
  "cust_no",
  "Schema::Hp3k::Result::CustMast",
  { cust_no => "cust_no" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 order_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->belongs_to(
  "order_no",
  "Schema::Hp3k::Result::SoeHeader",
  { order_no => "order_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+0glYVPwk/TLLyrPf0eVow


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
