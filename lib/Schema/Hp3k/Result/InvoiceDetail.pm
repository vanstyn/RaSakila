package Schema::Hp3k::Result::InvoiceDetail;

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

Schema::Hp3k::Result::InvoiceDetail

=cut

__PACKAGE__->table("INVOICE_DETAIL");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 invoice_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 12

=head2 bol_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 12

=head2 filler2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 truck_cnt

  data_type: 'smallint'
  is_nullable: 1

=head2 prod_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 18

=head2 order_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 ship_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 qty_picked

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 qty_shipped

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 price_1

  data_type: 'decimal'
  default_value: 0.0000
  is_nullable: 0
  size: [20,4]

=head2 price_2

  data_type: 'decimal'
  default_value: 0.0000
  is_nullable: 0
  size: [20,4]

=head2 cost_1

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_2

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_3

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_4

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_5

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_6

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_7

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_8

  data_type: 'double precision'
  is_nullable: 1

=head2 gl_credit

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 date_picked

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_shipped

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 salesman

  data_type: 'char'
  is_foreign_key: 1
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

=head2 comm_pct

  data_type: 'smallint'
  is_nullable: 1

=head2 location

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 lot

  data_type: 'char'
  is_nullable: 1
  size: 18

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

=head2 tare_wght

  data_type: 'integer'
  is_nullable: 1

=head2 weight

  data_type: 'integer'
  is_nullable: 1

=head2 customer_po

  data_type: 'char'
  is_nullable: 1
  size: 24

=head2 tot_wght

  data_type: 'integer'
  is_nullable: 1

=head2 code_tbls_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 code_tbls_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 code_tbls_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 code_tbls_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 wght_var

  data_type: 'integer'
  is_nullable: 1

=head2 gl_debit

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 date_sched

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 line_discs_1

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 line_discs_2

  data_type: 'integer'
  is_nullable: 1

=head2 line_discs_3

  data_type: 'integer'
  is_nullable: 1

=head2 disc_code_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_code_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_code_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 disc_code_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 part_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 reason_code

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 rev_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 inv_item

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 price_1_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 price_2_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 doc_id

  data_type: 'varchar'
  default_value: 'default'
  is_foreign_key: 1
  is_nullable: 0
  size: 40

=head2 price_2_bk_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 price_1_bk_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 divide_trigger_ran

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 qty_diff

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 price_1_df_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 price_2_df_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "invoice_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 12 },
  "bol_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 12 },
  "filler2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "truck_cnt",
  { data_type => "smallint", is_nullable => 1 },
  "prod_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 18 },
  "order_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "ship_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "qty_picked",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "qty_shipped",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "price_1",
  {
    data_type => "decimal",
    default_value => "0.0000",
    is_nullable => 0,
    size => [20, 4],
  },
  "price_2",
  {
    data_type => "decimal",
    default_value => "0.0000",
    is_nullable => 0,
    size => [20, 4],
  },
  "cost_1",
  { data_type => "double precision", is_nullable => 1 },
  "cost_2",
  { data_type => "double precision", is_nullable => 1 },
  "cost_3",
  { data_type => "double precision", is_nullable => 1 },
  "cost_4",
  { data_type => "double precision", is_nullable => 1 },
  "cost_5",
  { data_type => "double precision", is_nullable => 1 },
  "cost_6",
  { data_type => "double precision", is_nullable => 1 },
  "cost_7",
  { data_type => "double precision", is_nullable => 1 },
  "cost_8",
  { data_type => "double precision", is_nullable => 1 },
  "gl_credit",
  { data_type => "char", is_nullable => 1, size => 18 },
  "date_picked",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_shipped",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "salesman",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 4 },
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
  "comm_pct",
  { data_type => "smallint", is_nullable => 1 },
  "location",
  { data_type => "char", is_nullable => 1, size => 10 },
  "lot",
  { data_type => "char", is_nullable => 1, size => 18 },
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
  "tare_wght",
  { data_type => "integer", is_nullable => 1 },
  "weight",
  { data_type => "integer", is_nullable => 1 },
  "customer_po",
  { data_type => "char", is_nullable => 1, size => 24 },
  "tot_wght",
  { data_type => "integer", is_nullable => 1 },
  "code_tbls_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "wght_var",
  { data_type => "integer", is_nullable => 1 },
  "gl_debit",
  { data_type => "char", is_nullable => 1, size => 18 },
  "date_sched",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "line_discs_1",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "line_discs_2",
  { data_type => "integer", is_nullable => 1 },
  "line_discs_3",
  { data_type => "integer", is_nullable => 1 },
  "disc_code_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_code_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_code_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "disc_code_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "part_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "reason_code",
  { data_type => "char", is_nullable => 1, size => 4 },
  "rev_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "inv_item",
  { data_type => "char", is_nullable => 1, size => 4 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
  "price_1_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "price_2_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "doc_id",
  {
    data_type => "varchar",
    default_value => "default",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 40,
  },
  "price_2_bk_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "price_1_bk_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "divide_trigger_ran",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "qty_diff",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "price_1_df_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "price_2_df_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 ar_header

Type: might_have

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->might_have(
  "ar_header",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.invoice_no" => "self.invoice_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::InvoiceAuto>

=cut

__PACKAGE__->belongs_to(
  "invoice_no",
  "Schema::Hp3k::Result::InvoiceAuto",
  { invoice_no => "invoice_no" },
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

=head2 date_picked

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_picked",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_picked" },
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

=head2 date_sched

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_sched",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_sched" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 bol_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->belongs_to(
  "bol_no",
  "Schema::Hp3k::Result::BolMast",
  { bol_no => "bol_no" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 prod_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProdMast>

=cut

__PACKAGE__->belongs_to(
  "prod_no",
  "Schema::Hp3k::Result::ProdMast",
  { prod_no => "prod_no" },
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

=head2 salesman

Type: belongs_to

Related object: L<Schema::Hp3k::Result::SlsmMast>

=cut

__PACKAGE__->belongs_to(
  "salesman",
  "Schema::Hp3k::Result::SlsmMast",
  { salesman => "salesman" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Guk5ZPfRCG+7DXpJbq/cuw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
