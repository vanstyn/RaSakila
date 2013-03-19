package Schema::Hp3k::Result::CustMast;

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

Schema::Hp3k::Result::CustMast

=cut

__PACKAGE__->table("CUST_MAST");

=head1 ACCESSORS

=head2 cust_no

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 10

=head2 dup_key

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 cname

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 cust_code_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 cust_code_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 cust_code_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 cust_code_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 cust_code_5

  data_type: 'char'
  is_nullable: 1
  size: 2

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

=head2 phone

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 county

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 country

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 filler2b

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 order_status

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 reason_code

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 cust_group

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 bill_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 date_opened

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_updated

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

=head2 terr_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 4

=head2 comm_pct

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

=head2 carrier

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 cust_ref

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 fob

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 warehouse_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 warehouse_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 warehouse_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 warehouse_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 lockbox

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 branch

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 dunno_rate

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 filler12

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 fax

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 tax_code

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 gl_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 misc_arr_1

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_5

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 contact

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 cust_gac

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "cust_no",
  { data_type => "char", default_value => "", is_nullable => 0, size => 10 },
  "dup_key",
  { data_type => "char", is_nullable => 1, size => 16 },
  "cname",
  { data_type => "char", is_nullable => 1, size => 30 },
  "cust_code_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "cust_code_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "cust_code_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "cust_code_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "cust_code_5",
  { data_type => "char", is_nullable => 1, size => 2 },
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
  "phone",
  { data_type => "char", is_nullable => 1, size => 14 },
  "county",
  { data_type => "char", is_nullable => 1, size => 14 },
  "country",
  { data_type => "char", is_nullable => 1, size => 16 },
  "filler2b",
  { data_type => "char", is_nullable => 1, size => 2 },
  "order_status",
  { data_type => "char", is_nullable => 1, size => 2 },
  "reason_code",
  { data_type => "char", is_nullable => 1, size => 4 },
  "cust_group",
  { data_type => "char", is_nullable => 1, size => 10 },
  "bill_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "date_opened",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_updated",
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
  "terr_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 4 },
  "comm_pct",
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
  "carrier",
  { data_type => "char", is_nullable => 1, size => 20 },
  "cust_ref",
  { data_type => "char", is_nullable => 1, size => 14 },
  "fob",
  { data_type => "char", is_nullable => 1, size => 6 },
  "warehouse_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "warehouse_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "warehouse_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "warehouse_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "lockbox",
  { data_type => "char", is_nullable => 1, size => 10 },
  "branch",
  { data_type => "char", is_nullable => 1, size => 4 },
  "dunno_rate",
  { data_type => "char", is_nullable => 1, size => 14 },
  "filler12",
  { data_type => "char", is_nullable => 1, size => 12 },
  "fax",
  { data_type => "char", is_nullable => 1, size => 14 },
  "tax_code",
  { data_type => "char", is_nullable => 1, size => 10 },
  "gl_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "misc_arr_1",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_5",
  { data_type => "char", is_nullable => 1, size => 6 },
  "contact",
  { data_type => "char", is_nullable => 1, size => 16 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "cust_gac",
  { data_type => "char", is_nullable => 1, size => 10 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
);
__PACKAGE__->set_primary_key("cust_no");

=head1 RELATIONS

=head2 ar_details

Type: has_many

Related object: L<Schema::Hp3k::Result::ArDetail>

=cut

__PACKAGE__->has_many(
  "ar_details",
  "Schema::Hp3k::Result::ArDetail",
  { "foreign.bill_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_header_bills_to

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_header_bills_to",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.bill_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_header_ships_to

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_header_ships_to",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.ship_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_custs_no

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_custs_no",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.cust_no" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_bills_to

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_bills_to",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.bill_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_ships_to

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_ships_to",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.ship_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
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

=head2 cust_masts

Type: has_many

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->has_many(
  "cust_masts",
  "Schema::Hp3k::Result::CustMast",
  { "foreign.bill_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
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

=head2 terr_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::SlsmMast>

=cut

__PACKAGE__->belongs_to(
  "terr_no",
  "Schema::Hp3k::Result::SlsmMast",
  { salesman => "terr_no" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 date_opened

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_opened",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_opened" },
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

=head2 cust_stat

Type: might_have

Related object: L<Schema::Hp3k::Result::CustStat>

=cut

__PACKAGE__->might_have(
  "cust_stat",
  "Schema::Hp3k::Result::CustStat",
  { "foreign.cust_no" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.ship_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_details

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_details",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.ship_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_custs_no

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_custs_no",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.cust_no" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_bills_to

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_bills_to",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.bill_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_ships_to

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_ships_to",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.ship_to" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_ships

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeShip>

=cut

__PACKAGE__->has_many(
  "soe_ships",
  "Schema::Hp3k::Result::SoeShip",
  { "foreign.cust_no" => "self.cust_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NMAcuPkS+PUU6GxobpiV/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
