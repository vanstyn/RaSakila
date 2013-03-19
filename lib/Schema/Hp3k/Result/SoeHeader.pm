package Schema::Hp3k::Result::SoeHeader;

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

Schema::Hp3k::Result::SoeHeader

=cut

__PACKAGE__->table("SOE_HEADER");

=head1 ACCESSORS

=head2 order_no

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 div_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 cust_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 bill_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 quote_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 customer_po

  data_type: 'char'
  is_nullable: 1
  size: 24

=head2 sale_type

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 sale_type2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 sale_type3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 sale_type4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 sale_type5

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 reference

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 terms_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 backorder_seq

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 order_status

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 date_entered

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_ordered

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_shipped

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 down_payment

  data_type: 'integer'
  is_nullable: 1

=head2 flags_20_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_11

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_12

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_13

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_14

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_15

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_16

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_17

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_18

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_19

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_20_20

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 tot_value

  data_type: 'double precision'
  is_nullable: 1

=head2 open_value

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_wght

  data_type: 'integer'
  is_nullable: 1

=head2 ship_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 contact

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 contactb

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 contract

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 phone

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 location

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 salesman

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_1

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_2

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_3

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_no_4

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 slsm_pct_1

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_2

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_3

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_4

  data_type: 'smallint'
  is_nullable: 1

=head2 slsm_pct_5

  data_type: 'smallint'
  is_nullable: 1

=head2 date_updated

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 carrier

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 fob

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_cancel

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 currency_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 currency_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 filler18

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 doc_id

  data_type: 'varchar'
  default_value: 'default'
  is_foreign_key: 1
  is_nullable: 0
  size: 40

=head2 total_value

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "order_no",
  { data_type => "char", default_value => "", is_nullable => 0, size => 10 },
  "div_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "cust_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "bill_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "quote_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "customer_po",
  { data_type => "char", is_nullable => 1, size => 24 },
  "sale_type",
  { data_type => "char", is_nullable => 1, size => 2 },
  "sale_type2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "sale_type3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "sale_type4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "sale_type5",
  { data_type => "char", is_nullable => 1, size => 2 },
  "reference",
  { data_type => "char", is_nullable => 1, size => 10 },
  "terms_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "backorder_seq",
  { data_type => "char", is_nullable => 1, size => 2 },
  "order_status",
  { data_type => "char", is_nullable => 1, size => 2 },
  "date_entered",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_ordered",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_shipped",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "down_payment",
  { data_type => "integer", is_nullable => 1 },
  "flags_20_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_10",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_11",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_12",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_13",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_14",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_15",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_16",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_17",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_18",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_19",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_20_20",
  { data_type => "char", is_nullable => 1, size => 1 },
  "tot_value",
  { data_type => "double precision", is_nullable => 1 },
  "open_value",
  { data_type => "double precision", is_nullable => 1 },
  "tot_wght",
  { data_type => "integer", is_nullable => 1 },
  "ship_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "contact",
  { data_type => "char", is_nullable => 1, size => 16 },
  "contactb",
  { data_type => "char", is_nullable => 1, size => 16 },
  "contract",
  { data_type => "char", is_nullable => 1, size => 16 },
  "phone",
  { data_type => "char", is_nullable => 1, size => 14 },
  "location",
  { data_type => "char", is_nullable => 1, size => 10 },
  "salesman",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_1",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_2",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_3",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_no_4",
  { data_type => "char", is_nullable => 1, size => 4 },
  "slsm_pct_1",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_2",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_3",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_4",
  { data_type => "smallint", is_nullable => 1 },
  "slsm_pct_5",
  { data_type => "smallint", is_nullable => 1 },
  "date_updated",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "carrier",
  { data_type => "char", is_nullable => 1, size => 20 },
  "fob",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_cancel",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
  "currency_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "currency_rate",
  { data_type => "double precision", is_nullable => 1 },
  "filler18",
  { data_type => "char", is_nullable => 1, size => 18 },
  "doc_id",
  {
    data_type => "varchar",
    default_value => "default",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 40,
  },
  "total_value",
  { data_type => "float", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("order_no");

=head1 RELATIONS

=head2 ar_headers

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_headers",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.order_no" => "self.order_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_masts

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_masts",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.order_no" => "self.order_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.order_no" => "self.order_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_details

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_details",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.order_no" => "self.order_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

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

=head2 doc

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DocLink>

=cut

__PACKAGE__->belongs_to(
  "doc",
  "Schema::Hp3k::Result::DocLink",
  { doc_id => "doc_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 date_entered

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_entered",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_entered" },
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

=head2 date_shipped

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_shipped",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_shipped" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_updated

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_updated",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_updated" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_cancel

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_cancel",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_cancel" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 soe_ship

Type: might_have

Related object: L<Schema::Hp3k::Result::SoeShip>

=cut

__PACKAGE__->might_have(
  "soe_ship",
  "Schema::Hp3k::Result::SoeShip",
  { "foreign.order_no" => "self.order_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:svj7m1RwbTQcwW4HJ1dEbw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
