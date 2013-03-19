package Schema::Hp3k::Result::CustCard;

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

Schema::Hp3k::Result::CustCard

=cut

__PACKAGE__->table("CUST_CARD");

=head1 ACCESSORS

=head2 cust_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 card_no

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 orig_doc_type

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 contact

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 amt_arr_1

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_2

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_3

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_4

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_5

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_6

  data_type: 'integer'
  is_nullable: 1

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 priority

  data_type: 'char'
  is_nullable: 1
  size: 2

=cut

__PACKAGE__->add_columns(
  "cust_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "card_no",
  { data_type => "char", is_nullable => 1, size => 16 },
  "orig_doc_type",
  { data_type => "char", is_nullable => 1, size => 2 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
  "contact",
  { data_type => "char", is_nullable => 1, size => 16 },
  "amt_arr_1",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_2",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_3",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_4",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_5",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_6",
  { data_type => "integer", is_nullable => 1 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
  "priority",
  { data_type => "char", is_nullable => 1, size => 2 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OiiiBePbTAW2cEVZtuU6Wg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
