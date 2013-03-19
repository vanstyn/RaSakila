package Schema::GreenSheet::Result::Project;

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

Schema::GreenSheet::Result::Project

=cut

__PACKAGE__->table("project");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 prefix

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 6

=head2 engineering_priority

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 base_pn

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 engineer_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 engineer2_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 restricted_to_dist

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 restricted_to_dist_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 dist1_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 dist1_salesperson_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 dist2_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 dist2_salesperson_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 cust_company_name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 cust_contact_name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 cust_contact_phone

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 cust_contact_phone_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 cust_contact_email

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 application_notes

  data_type: 'text'
  is_nullable: 1

=head2 customer_status

  data_type: 'text'
  is_nullable: 1

=head2 next_steps

  data_type: 'text'
  is_nullable: 1

=head2 follow_up_on

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 competition

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 rank

  data_type: 'enum'
  extra: {list => [1,2,3]}
  is_nullable: 1

=head2 target_price

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 est_annual_qty

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 delivery_time

  data_type: 'integer'
  default_value: 25
  is_nullable: 0

=head2 est_eng_hours

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 project_complexity

  data_type: 'integer'
  is_nullable: 1

=head2 scd_required

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 scd_requested_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 scd_completed_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 scd_sign_off_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 prototype_required

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 prototype_ordered_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 prototype_dwg_completed_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_proto_ordered_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_proto_dwg_completed_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 release_order_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 dwg_release_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 bom_entered_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 price

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 discount_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 min_qty

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 material_cost

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 assembly_labor

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 component_labor

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 other_cost_pp

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 total_setup_time

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sales_admin_hours

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 total_tooling_cost

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 net_price

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 amortized_tooling_price

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 amortized_tooling_qty

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 amortized_sales_eng_price

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sales_eng_across_qty

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 pricing_updated_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pricing_updated_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 pricing_notes

  data_type: 'text'
  is_nullable: 1

=head2 calc_est_order_value

  data_type: 'float'
  is_nullable: 1

=head2 calc_est_annual_value

  data_type: 'float'
  is_nullable: 1

=head2 calc_min_order_discount

  data_type: 'float'
  is_nullable: 1

=head2 calc_min_order_net_price

  data_type: 'float'
  is_nullable: 1

=head2 calc_amortized_cost

  data_type: 'float'
  is_nullable: 1

=head2 calc_total_cost_per_part

  data_type: 'float'
  is_nullable: 1

=head2 calc_min_order_margin

  data_type: 'float'
  is_nullable: 1

=head2 calc_max_order_discount

  data_type: 'float'
  is_nullable: 1

=head2 calc_max_discount_margin

  data_type: 'float'
  is_nullable: 1

=head2 calc_first_order_fee

  data_type: 'float'
  is_nullable: 1

=head2 calc_target_total_cost

  data_type: 'float'
  is_nullable: 1

=head2 old_product_category_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "prefix",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 6 },
  "engineering_priority",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "base_pn",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "engineer_user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "engineer2_user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "restricted_to_dist",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "restricted_to_dist_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "dist1_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "dist1_salesperson_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "dist2_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "dist2_salesperson_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "cust_company_name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "cust_contact_name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "cust_contact_phone",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "cust_contact_phone_ext",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "cust_contact_email",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "application_notes",
  { data_type => "text", is_nullable => 1 },
  "customer_status",
  { data_type => "text", is_nullable => 1 },
  "next_steps",
  { data_type => "text", is_nullable => 1 },
  "follow_up_on",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "competition",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "rank",
  { data_type => "enum", extra => { list => [1, 2, 3] }, is_nullable => 1 },
  "target_price",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "est_annual_qty",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "delivery_time",
  { data_type => "integer", default_value => 25, is_nullable => 0 },
  "est_eng_hours",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "project_complexity",
  { data_type => "integer", is_nullable => 1 },
  "scd_required",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "scd_requested_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "scd_completed_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "scd_sign_off_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "prototype_required",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "prototype_ordered_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "prototype_dwg_completed_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_proto_ordered_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_proto_dwg_completed_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "release_order_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "dwg_release_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "bom_entered_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "price",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "discount_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "min_qty",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "material_cost",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "assembly_labor",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "component_labor",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "other_cost_pp",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "total_setup_time",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "sales_admin_hours",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "total_tooling_cost",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "net_price",
  { data_type => "float", extra => { unsigned => 1 }, is_nullable => 1 },
  "amortized_tooling_price",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "amortized_tooling_qty",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "amortized_sales_eng_price",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "sales_eng_across_qty",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "pricing_updated_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pricing_updated_user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "pricing_notes",
  { data_type => "text", is_nullable => 1 },
  "calc_est_order_value",
  { data_type => "float", is_nullable => 1 },
  "calc_est_annual_value",
  { data_type => "float", is_nullable => 1 },
  "calc_min_order_discount",
  { data_type => "float", is_nullable => 1 },
  "calc_min_order_net_price",
  { data_type => "float", is_nullable => 1 },
  "calc_amortized_cost",
  { data_type => "float", is_nullable => 1 },
  "calc_total_cost_per_part",
  { data_type => "float", is_nullable => 1 },
  "calc_min_order_margin",
  { data_type => "float", is_nullable => 1 },
  "calc_max_order_discount",
  { data_type => "float", is_nullable => 1 },
  "calc_max_discount_margin",
  { data_type => "float", is_nullable => 1 },
  "calc_first_order_fee",
  { data_type => "float", is_nullable => 1 },
  "calc_target_total_cost",
  { data_type => "float", is_nullable => 1 },
  "old_product_category_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("PROD_NO", ["prod_no"]);

=head1 RELATIONS

=head2 id

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "id",
  "Schema::GreenSheet::Result::Object",
  { id => "id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dist2_salesperson

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->belongs_to(
  "dist2_salesperson",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { id => "dist2_salesperson_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 engineer2_user

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "engineer2_user",
  "Schema::GreenSheet::Result::User",
  { id => "engineer2_user_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 old_product_category

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::OldProductCategory>

=cut

__PACKAGE__->belongs_to(
  "old_product_category",
  "Schema::GreenSheet::Result::OldProductCategory",
  { id => "old_product_category_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 discount

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Discount>

=cut

__PACKAGE__->belongs_to(
  "discount",
  "Schema::GreenSheet::Result::Discount",
  { id => "discount_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 engineer_user

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "engineer_user",
  "Schema::GreenSheet::Result::User",
  { id => "engineer_user_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 pricing_updated_user

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "pricing_updated_user",
  "Schema::GreenSheet::Result::User",
  { id => "pricing_updated_user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Status>

=cut

__PACKAGE__->belongs_to(
  "status",
  "Schema::GreenSheet::Result::Status",
  { id => "status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dist1

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->belongs_to(
  "dist1",
  "Schema::GreenSheet::Result::DistributorOffice",
  { id => "dist1_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 dist1_salesperson

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->belongs_to(
  "dist1_salesperson",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { id => "dist1_salesperson_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 dist2

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->belongs_to(
  "dist2",
  "Schema::GreenSheet::Result::DistributorOffice",
  { id => "dist2_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 quotes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Quote>

=cut

__PACKAGE__->has_many(
  "quotes",
  "Schema::GreenSheet::Result::Quote",
  { "foreign.project_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QZhQZ4zqf6N7WSM6HmTRfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
