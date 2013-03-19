package Schema::Hp3k::Result::DateLink;

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

Schema::Hp3k::Result::DateLink

=cut

__PACKAGE__->table("date_link");

=head1 ACCESSORS

=head2 hp_image_date

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 6

=head2 date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "hp_image_date",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 6 },
  "date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("hp_image_date");
__PACKAGE__->add_unique_constraint("hp_image_date_2", ["hp_image_date", "date"]);
__PACKAGE__->add_unique_constraint("date", ["date"]);

=head1 RELATIONS

=head2 ar_detail_date_recs

Type: has_many

Related object: L<Schema::Hp3k::Result::ArDetail>

=cut

__PACKAGE__->has_many(
  "ar_detail_date_recs",
  "Schema::Hp3k::Result::ArDetail",
  { "foreign.date_rec" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_detail_dates_applied

Type: has_many

Related object: L<Schema::Hp3k::Result::ArDetail>

=cut

__PACKAGE__->has_many(
  "ar_detail_dates_applied",
  "Schema::Hp3k::Result::ArDetail",
  { "foreign.date_applied" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_detail_dates_entered

Type: has_many

Related object: L<Schema::Hp3k::Result::ArDetail>

=cut

__PACKAGE__->has_many(
  "ar_detail_dates_entered",
  "Schema::Hp3k::Result::ArDetail",
  { "foreign.date_entered" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_header_date_payments

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_header_date_payments",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.date_payment" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_header_date_array_1s

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_header_date_array_1s",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.date_array_1" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_header_date_invoiceds

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_header_date_invoiceds",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.date_invoiced" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 ar_header_dates_ordered

Type: has_many

Related object: L<Schema::Hp3k::Result::ArHeader>

=cut

__PACKAGE__->has_many(
  "ar_header_dates_ordered",
  "Schema::Hp3k::Result::ArHeader",
  { "foreign.date_ordered" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_dates_shipped

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_dates_shipped",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.date_shipped" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_dates_entered

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_dates_entered",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.date_entered" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_dates_updated

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_dates_updated",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.date_updated" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 bol_mast_date_invoiceds

Type: has_many

Related object: L<Schema::Hp3k::Result::BolMast>

=cut

__PACKAGE__->has_many(
  "bol_mast_date_invoiceds",
  "Schema::Hp3k::Result::BolMast",
  { "foreign.date_invoiced" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_mast_dates_opened

Type: has_many

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->has_many(
  "cust_mast_dates_opened",
  "Schema::Hp3k::Result::CustMast",
  { "foreign.date_opened" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_mast_dates_updated

Type: has_many

Related object: L<Schema::Hp3k::Result::CustMast>

=cut

__PACKAGE__->has_many(
  "cust_mast_dates_updated",
  "Schema::Hp3k::Result::CustMast",
  { "foreign.date_updated" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_stat_date_high_crds

Type: has_many

Related object: L<Schema::Hp3k::Result::CustStat>

=cut

__PACKAGE__->has_many(
  "cust_stat_date_high_crds",
  "Schema::Hp3k::Result::CustStat",
  { "foreign.date_high_crd" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_stat_date_payments

Type: has_many

Related object: L<Schema::Hp3k::Result::CustStat>

=cut

__PACKAGE__->has_many(
  "cust_stat_date_payments",
  "Schema::Hp3k::Result::CustStat",
  { "foreign.date_payment" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_stat_date_last_ages

Type: has_many

Related object: L<Schema::Hp3k::Result::CustStat>

=cut

__PACKAGE__->has_many(
  "cust_stat_date_last_ages",
  "Schema::Hp3k::Result::CustStat",
  { "foreign.date_last_age" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cust_stat_date_last_sales

Type: has_many

Related object: L<Schema::Hp3k::Result::CustStat>

=cut

__PACKAGE__->has_many(
  "cust_stat_date_last_sales",
  "Schema::Hp3k::Result::CustStat",
  { "foreign.date_last_sales" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_detail_dates_picked

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_detail_dates_picked",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.date_picked" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_detail_dates_shipped

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_detail_dates_shipped",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.date_shipped" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 invoice_detail_date_scheds

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_detail_date_scheds",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.date_sched" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prod_mast_date_activities

Type: has_many

Related object: L<Schema::Hp3k::Result::ProdMast>

=cut

__PACKAGE__->has_many(
  "prod_mast_date_activities",
  "Schema::Hp3k::Result::ProdMast",
  { "foreign.date_activity" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prod_mast_dates_updated

Type: has_many

Related object: L<Schema::Hp3k::Result::ProdMast>

=cut

__PACKAGE__->has_many(
  "prod_mast_dates_updated",
  "Schema::Hp3k::Result::ProdMast",
  { "foreign.date_updated" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 remarks

Type: has_many

Related object: L<Schema::Hp3k::Result::Remark>

=cut

__PACKAGE__->has_many(
  "remarks",
  "Schema::Hp3k::Result::Remark",
  { "foreign.date_updated" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 slsm_masts

Type: has_many

Related object: L<Schema::Hp3k::Result::SlsmMast>

=cut

__PACKAGE__->has_many(
  "slsm_masts",
  "Schema::Hp3k::Result::SlsmMast",
  { "foreign.date_array_1" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_detail_dates_wanted

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_detail_dates_wanted",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.date_wanted" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_detail_date_scheds

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_detail_date_scheds",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.date_sched" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_detail_dates_entered

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_detail_dates_entered",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.date_entered" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_detail_dates_updated

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_detail_dates_updated",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.date_updated" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_detail_dates_shipped

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_detail_dates_shipped",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.date_shipped" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_dates_entered

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_dates_entered",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.date_entered" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_dates_ordered

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_dates_ordered",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.date_ordered" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_dates_shipped

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_dates_shipped",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.date_shipped" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_dates_updated

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_dates_updated",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.date_updated" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 soe_header_dates_cancel

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeHeader>

=cut

__PACKAGE__->has_many(
  "soe_header_dates_cancel",
  "Schema::Hp3k::Result::SoeHeader",
  { "foreign.date_cancel" => "self.hp_image_date" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XKQMuiguVyu6s3leRGuTMQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
