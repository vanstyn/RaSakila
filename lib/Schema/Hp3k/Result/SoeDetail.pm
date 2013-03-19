package Schema::Hp3k::Result::SoeDetail;

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

Schema::Hp3k::Result::SoeDetail

=cut

__PACKAGE__->table("SOE_DETAIL");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 order_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 work_order

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 prod_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 18

=head2 line_po

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 cust_part

  data_type: 'char'
  is_nullable: 1
  size: 26

=head2 filler2

  data_type: 'char'
  is_nullable: 1
  size: 2

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

=head2 filler2b

  data_type: 'char'
  is_nullable: 1
  size: 2

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

=head2 qty_ordered

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 qty_shipped

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 qty_workord

  data_type: 'double precision'
  is_nullable: 1

=head2 qty_return

  data_type: 'double precision'
  is_nullable: 1

=head2 qty_bo

  data_type: 'double precision'
  is_nullable: 1

=head2 qty_picked

  data_type: 'double precision'
  is_nullable: 1

=head2 weight

  data_type: 'integer'
  is_nullable: 1

=head2 order_status

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 reason_code

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 carrier

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 ship_to

  data_type: 'char'
  is_foreign_key: 1
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

=head2 comm_pct

  data_type: 'smallint'
  is_nullable: 1

=head2 date_entered

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_updated

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_shipped

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_wanted

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_sched

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_cancel

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_hold

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 hold_days

  data_type: 'smallint'
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

=head2 whse_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 gl_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 cos_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 mot

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 mos

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 filler4

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 divide_trigger_ran

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 price_1_bk_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 price_1_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 price_2_bk_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

=head2 price_2_total

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [8,2]

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
  "order_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "work_order",
  { data_type => "char", is_nullable => 1, size => 10 },
  "prod_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 18 },
  "line_po",
  { data_type => "char", is_nullable => 1, size => 18 },
  "cust_part",
  { data_type => "char", is_nullable => 1, size => 26 },
  "filler2",
  { data_type => "char", is_nullable => 1, size => 2 },
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
  "filler2b",
  { data_type => "char", is_nullable => 1, size => 2 },
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
  "code_tbls_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "qty_ordered",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "qty_shipped",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "qty_workord",
  { data_type => "double precision", is_nullable => 1 },
  "qty_return",
  { data_type => "double precision", is_nullable => 1 },
  "qty_bo",
  { data_type => "double precision", is_nullable => 1 },
  "qty_picked",
  { data_type => "double precision", is_nullable => 1 },
  "weight",
  { data_type => "integer", is_nullable => 1 },
  "order_status",
  { data_type => "char", is_nullable => 1, size => 2 },
  "reason_code",
  { data_type => "char", is_nullable => 1, size => 4 },
  "carrier",
  { data_type => "char", is_nullable => 1, size => 20 },
  "ship_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
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
  "comm_pct",
  { data_type => "smallint", is_nullable => 1 },
  "date_entered",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_updated",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_shipped",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_wanted",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_sched",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_cancel",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_hold",
  { data_type => "char", is_nullable => 1, size => 6 },
  "hold_days",
  { data_type => "smallint", is_nullable => 1 },
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
  "whse_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "gl_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "cos_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "mot",
  { data_type => "char", is_nullable => 1, size => 2 },
  "mos",
  { data_type => "char", is_nullable => 1, size => 14 },
  "filler4",
  { data_type => "char", is_nullable => 1, size => 4 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "divide_trigger_ran",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "price_1_bk_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "price_1_total",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [8, 2],
  },
  "price_2_bk_total",
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

=head2 date_wanted

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_wanted",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_wanted" },
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


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iSusCL2T03KtBH5t6WnNpw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
