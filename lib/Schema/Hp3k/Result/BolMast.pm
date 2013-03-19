package Schema::Hp3k::Result::BolMast;

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

Schema::Hp3k::Result::BolMast

=cut

__PACKAGE__->table("BOL_MAST");

=head1 ACCESSORS

=head2 bol_no

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 12

=head2 fisc

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 order_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 prime_whse

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

=head2 ship_to

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 10

=head2 date_shipped

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 tot_wght

  data_type: 'integer'
  is_nullable: 1

=head2 tare_wght

  data_type: 'integer'
  is_nullable: 1

=head2 dunn_wght

  data_type: 'integer'
  is_nullable: 1

=head2 dunn_fwght

  data_type: 'integer'
  is_nullable: 1

=head2 tot_boxes

  data_type: 'smallint'
  is_nullable: 1

=head2 carrier

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 truck_code

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 freight

  data_type: 'integer'
  is_nullable: 1

=head2 cons_whse

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 mos

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 fob

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 extra_id

  data_type: 'char'
  is_nullable: 1
  size: 8

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

=head2 invoice_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 tot_iwght

  data_type: 'integer'
  is_nullable: 1

=head2 parcel_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 date_entered

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_invoiced

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 date_updated

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 doc_id

  data_type: 'varchar'
  default_value: 'default'
  is_foreign_key: 1
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "bol_no",
  { data_type => "char", default_value => "", is_nullable => 0, size => 12 },
  "fisc",
  { data_type => "char", is_nullable => 1, size => 4 },
  "order_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "prime_whse",
  { data_type => "char", is_nullable => 1, size => 2 },
  "cust_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "bill_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "ship_to",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 10 },
  "date_shipped",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "tot_wght",
  { data_type => "integer", is_nullable => 1 },
  "tare_wght",
  { data_type => "integer", is_nullable => 1 },
  "dunn_wght",
  { data_type => "integer", is_nullable => 1 },
  "dunn_fwght",
  { data_type => "integer", is_nullable => 1 },
  "tot_boxes",
  { data_type => "smallint", is_nullable => 1 },
  "carrier",
  { data_type => "char", is_nullable => 1, size => 20 },
  "truck_code",
  { data_type => "char", is_nullable => 1, size => 10 },
  "freight",
  { data_type => "integer", is_nullable => 1 },
  "cons_whse",
  { data_type => "char", is_nullable => 1, size => 2 },
  "mos",
  { data_type => "char", is_nullable => 1, size => 14 },
  "fob",
  { data_type => "char", is_nullable => 1, size => 6 },
  "extra_id",
  { data_type => "char", is_nullable => 1, size => 8 },
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
  "invoice_no",
  { data_type => "char", is_nullable => 1, size => 12 },
  "tot_iwght",
  { data_type => "integer", is_nullable => 1 },
  "parcel_no",
  { data_type => "char", is_nullable => 1, size => 12 },
  "date_entered",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_invoiced",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "date_updated",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
  "doc_id",
  {
    data_type => "varchar",
    default_value => "default",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 40,
  },
);
__PACKAGE__->set_primary_key("bol_no");

=head1 RELATIONS

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

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.bol_no" => "self.bol_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DlCOcl34sjsfcP5oCF3PcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
