package Schema::Hp3k::Result::ArHeader;

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

Schema::Hp3k::Result::ArHeader

=cut

__PACKAGE__->table("AR_HEADER");

=head1 ACCESSORS

=head2 invoice_no

  data_type: 'char'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 12

=head2 bill_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 ship_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 date_invoiced

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 orig_doc_type

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 refdoc

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 order_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 date_ordered

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 orig_doc_amt

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 curr_open_amt

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 date_array_1

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_array_2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_5

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_array_6

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_payment

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 terms_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 times_over_code

  data_type: 'double precision'
  is_nullable: 1

=head2 discount_taken

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_1

  data_type: 'float'
  default_value: 0
  is_nullable: 0

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

=head2 currency_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 currency_total

  data_type: 'integer'
  is_nullable: 1

=head2 currency_left

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

=head2 fisc

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 ar_current

  data_type: 'integer'
  is_nullable: 1

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 gl_tranum

  data_type: 'integer'
  is_nullable: 1

=head2 filler2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 tax_code

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 reason_code

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 gl_debit

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 parent_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 rcpt_no

  data_type: 'integer'
  is_nullable: 1

=head2 currency_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 invoice_sort

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 divide_trigger_ran

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "invoice_no",
  {
    data_type => "char",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 12,
  },
  "bill_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "ship_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "date_invoiced",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "orig_doc_type",
  { data_type => "char", is_nullable => 1, size => 2 },
  "refdoc",
  { data_type => "char", is_nullable => 1, size => 12 },
  "order_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "date_ordered",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "orig_doc_amt",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "curr_open_amt",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "date_array_1",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_array_2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_5",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_array_6",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_payment",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "terms_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "times_over_code",
  { data_type => "double precision", is_nullable => 1 },
  "discount_taken",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_1",
  { data_type => "float", default_value => 0, is_nullable => 0 },
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
  "currency_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "currency_total",
  { data_type => "integer", is_nullable => 1 },
  "currency_left",
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
  "fisc",
  { data_type => "char", is_nullable => 1, size => 4 },
  "ar_current",
  { data_type => "integer", is_nullable => 1 },
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
  "gl_tranum",
  { data_type => "integer", is_nullable => 1 },
  "filler2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "tax_code",
  { data_type => "char", is_nullable => 1, size => 10 },
  "reason_code",
  { data_type => "char", is_nullable => 1, size => 4 },
  "gl_debit",
  { data_type => "char", is_nullable => 1, size => 18 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "parent_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "rcpt_no",
  { data_type => "integer", is_nullable => 1 },
  "currency_rate",
  { data_type => "double precision", is_nullable => 1 },
  "invoice_sort",
  { data_type => "char", is_nullable => 1, size => 12 },
  "divide_trigger_ran",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("invoice_no");

=head1 RELATIONS

=head2 ar_details

Type: has_many

Related object: L<Schema::Hp3k::Result::ArDetail>

=cut

__PACKAGE__->has_many(
  "ar_details",
  "Schema::Hp3k::Result::ArDetail",
  { "foreign.invoice_no" => "self.invoice_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 date_payment

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_payment",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_payment" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_array_1

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_array_1",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_array_1" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 invoice_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->belongs_to(
  "invoice_no",
  "Schema::Hp3k::Result::InvoiceDetail",
  { invoice_no => "invoice_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 order_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->belongs_to(
  "order_no",
  "Schema::Hp3k::Result::SoeHeader",
  { order_no => "order_no" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 bill_to

Type: belongs_to

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->belongs_to(
  "bill_to",
  "Schema::Hp3k::Result::CustMast",
  { cust_no => "bill_to" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 ship_to

Type: belongs_to

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->belongs_to(
  "ship_to",
  "Schema::Hp3k::Result::CustMast",
  { cust_no => "ship_to" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_invoiced

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_invoiced",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_invoiced" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_ordered

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_ordered",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_ordered" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:00hXiHu17WEW9u1hdKVB+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
