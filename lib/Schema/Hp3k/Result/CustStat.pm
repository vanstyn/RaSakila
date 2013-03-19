package Schema::Hp3k::Result::CustStat;

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

Schema::Hp3k::Result::CustStat

=cut

__PACKAGE__->table("CUST_STAT");

=head1 ACCESSORS

=head2 cust_no

  data_type: 'char'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=head2 order_limit

  data_type: 'integer'
  is_nullable: 1

=head2 ship_not_inv

  data_type: 'integer'
  is_nullable: 1

=head2 next_shipto

  data_type: 'smallint'
  is_nullable: 1

=head2 max_disc

  data_type: 'smallint'
  is_nullable: 1

=head2 credit_limit

  data_type: 'integer'
  is_nullable: 1

=head2 highest_credit

  data_type: 'integer'
  is_nullable: 1

=head2 date_high_crd

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 terms_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 payment_age_1

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_2

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_3

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_4

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_5

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_6

  data_type: 'integer'
  is_nullable: 1

=head2 ar_current

  data_type: 'integer'
  is_nullable: 1

=head2 ar_agent

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 ar_age_1

  data_type: 'integer'
  is_nullable: 1

=head2 ar_age_2

  data_type: 'integer'
  is_nullable: 1

=head2 ar_age_3

  data_type: 'integer'
  is_nullable: 1

=head2 ar_age_4

  data_type: 'integer'
  is_nullable: 1

=head2 ar_age_5

  data_type: 'integer'
  is_nullable: 1

=head2 cust_sales_1

  data_type: 'integer'
  is_nullable: 1

=head2 cust_sales_2

  data_type: 'integer'
  is_nullable: 1

=head2 cust_returns_1

  data_type: 'integer'
  is_nullable: 1

=head2 cust_returns_2

  data_type: 'integer'
  is_nullable: 1

=head2 openorder_amt

  data_type: 'integer'
  is_nullable: 1

=head2 backorder_amt

  data_type: 'integer'
  is_nullable: 1

=head2 credit_hold_amt

  data_type: 'integer'
  is_nullable: 1

=head2 date_last_sales

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_payment

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 last_pymt_amt

  data_type: 'integer'
  is_nullable: 1

=head2 date_last_age

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

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

=head2 state_id

  data_type: 'char'
  is_nullable: 1
  size: 36

=head2 currency_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 federal_id

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 misc_amts_1

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_2

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_3

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_4

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_5

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_6

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_7

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_8

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_9

  data_type: 'double precision'
  is_nullable: 1

=head2 misc_amts_10

  data_type: 'double precision'
  is_nullable: 1

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "cust_no",
  {
    data_type => "char",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 10,
  },
  "order_limit",
  { data_type => "integer", is_nullable => 1 },
  "ship_not_inv",
  { data_type => "integer", is_nullable => 1 },
  "next_shipto",
  { data_type => "smallint", is_nullable => 1 },
  "max_disc",
  { data_type => "smallint", is_nullable => 1 },
  "credit_limit",
  { data_type => "integer", is_nullable => 1 },
  "highest_credit",
  { data_type => "integer", is_nullable => 1 },
  "date_high_crd",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "terms_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "payment_age_1",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_2",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_3",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_4",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_5",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_6",
  { data_type => "integer", is_nullable => 1 },
  "ar_current",
  { data_type => "integer", is_nullable => 1 },
  "ar_agent",
  { data_type => "char", is_nullable => 1, size => 2 },
  "ar_age_1",
  { data_type => "integer", is_nullable => 1 },
  "ar_age_2",
  { data_type => "integer", is_nullable => 1 },
  "ar_age_3",
  { data_type => "integer", is_nullable => 1 },
  "ar_age_4",
  { data_type => "integer", is_nullable => 1 },
  "ar_age_5",
  { data_type => "integer", is_nullable => 1 },
  "cust_sales_1",
  { data_type => "integer", is_nullable => 1 },
  "cust_sales_2",
  { data_type => "integer", is_nullable => 1 },
  "cust_returns_1",
  { data_type => "integer", is_nullable => 1 },
  "cust_returns_2",
  { data_type => "integer", is_nullable => 1 },
  "openorder_amt",
  { data_type => "integer", is_nullable => 1 },
  "backorder_amt",
  { data_type => "integer", is_nullable => 1 },
  "credit_hold_amt",
  { data_type => "integer", is_nullable => 1 },
  "date_last_sales",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_payment",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "last_pymt_amt",
  { data_type => "integer", is_nullable => 1 },
  "date_last_age",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
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
  "state_id",
  { data_type => "char", is_nullable => 1, size => 36 },
  "currency_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "federal_id",
  { data_type => "char", is_nullable => 1, size => 12 },
  "misc_amts_1",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_2",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_3",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_4",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_5",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_6",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_7",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_8",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_9",
  { data_type => "double precision", is_nullable => 1 },
  "misc_amts_10",
  { data_type => "double precision", is_nullable => 1 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
);
__PACKAGE__->set_primary_key("cust_no");

=head1 RELATIONS

=head2 cust_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->belongs_to(
  "cust_no",
  "Schema::Hp3k::Result::CustMast",
  { cust_no => "cust_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 date_high_crd

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_high_crd",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_high_crd" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
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

=head2 date_last_age

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_last_age",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_last_age" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_last_sale

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_last_sale",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_last_sales" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:x+2TkVyAy0GZCP4Y+DdG2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
