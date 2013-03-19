package Schema::Hp3k::Result::SerialMast;

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

Schema::Hp3k::Result::SerialMast

=cut

__PACKAGE__->table("SERIAL_MAST");

=head1 ACCESSORS

=head2 serial_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 qty_inst

  data_type: 'integer'
  is_nullable: 1

=head2 bill_to

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 cust_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 ship_to

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 contact

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 order_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 bol_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 inv_item

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 invoice_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 customer_po

  data_type: 'char'
  is_nullable: 1
  size: 24

=head2 date_shipped

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_inst

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_srv

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_rtn

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_wnty_1

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_wnty_2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_wnty_3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_wnty_4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_activity

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_invoiced

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_payment

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 cnt_arr_1

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_2

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_3

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_4

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_5

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_6

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_7

  data_type: 'integer'
  is_nullable: 1

=head2 cnt_arr_8

  data_type: 'integer'
  is_nullable: 1

=head2 flags_10_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 filler26

  data_type: 'char'
  is_nullable: 1
  size: 26

=head2 new_serial

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 date_sort

  data_type: 'char'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "serial_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "qty_inst",
  { data_type => "integer", is_nullable => 1 },
  "bill_to",
  { data_type => "char", is_nullable => 1, size => 10 },
  "cust_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "ship_to",
  { data_type => "char", is_nullable => 1, size => 10 },
  "contact",
  { data_type => "char", is_nullable => 1, size => 16 },
  "order_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "bol_no",
  { data_type => "char", is_nullable => 1, size => 12 },
  "inv_item",
  { data_type => "char", is_nullable => 1, size => 4 },
  "invoice_no",
  { data_type => "char", is_nullable => 1, size => 12 },
  "customer_po",
  { data_type => "char", is_nullable => 1, size => 24 },
  "date_shipped",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_inst",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_srv",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_rtn",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_wnty_1",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_wnty_2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_wnty_3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_wnty_4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_activity",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_invoiced",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_payment",
  { data_type => "char", is_nullable => 1, size => 6 },
  "cnt_arr_1",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_2",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_3",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_4",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_5",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_6",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_7",
  { data_type => "integer", is_nullable => 1 },
  "cnt_arr_8",
  { data_type => "integer", is_nullable => 1 },
  "flags_10_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_10",
  { data_type => "char", is_nullable => 1, size => 1 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "filler26",
  { data_type => "char", is_nullable => 1, size => 26 },
  "new_serial",
  { data_type => "char", is_nullable => 1, size => 18 },
  "date_sort",
  { data_type => "char", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:u1ukhY+wAi88RLNsWKXNGg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
