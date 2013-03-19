package Schema::GreenSheet::Result::Distributor;

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

Schema::GreenSheet::Result::Distributor

=cut

__PACKAGE__->table("distributor");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 number

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 website

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 country

  data_type: 'varchar'
  is_nullable: 1
  size: 96

=head2 global_region_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_type_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dom_intl_status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 image_html

  data_type: 'text'
  is_nullable: 1

=head2 cache_12mo_rank

  data_type: 'integer'
  is_nullable: 1

=head2 cache_12mo_tot_sales

  data_type: 'float'
  is_nullable: 1

=head2 cache_1mo_rank

  data_type: 'integer'
  is_nullable: 1

=head2 cache_1mo_tot_sales

  data_type: 'float'
  is_nullable: 1

=head2 cache_prev1mo_rank

  data_type: 'integer'
  is_nullable: 1

=head2 cache_prev1mo_tot_sales

  data_type: 'float'
  is_nullable: 1

=head2 cache_prev12mo_rank

  data_type: 'integer'
  is_nullable: 1

=head2 cache_prev12mo_tot_sales

  data_type: 'float'
  is_nullable: 1

=head2 cache_12mo_avg_mo_sales

  data_type: 'float'
  is_nullable: 1

=head2 cache_12mo_specials_tot_sales

  data_type: 'float'
  is_nullable: 1

=head2 cache_updated_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "number",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "website",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "country",
  { data_type => "varchar", is_nullable => 1, size => 96 },
  "global_region_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_type_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dom_intl_status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "image_html",
  { data_type => "text", is_nullable => 1 },
  "cache_12mo_rank",
  { data_type => "integer", is_nullable => 1 },
  "cache_12mo_tot_sales",
  { data_type => "float", is_nullable => 1 },
  "cache_1mo_rank",
  { data_type => "integer", is_nullable => 1 },
  "cache_1mo_tot_sales",
  { data_type => "float", is_nullable => 1 },
  "cache_prev1mo_rank",
  { data_type => "integer", is_nullable => 1 },
  "cache_prev1mo_tot_sales",
  { data_type => "float", is_nullable => 1 },
  "cache_prev12mo_rank",
  { data_type => "integer", is_nullable => 1 },
  "cache_prev12mo_tot_sales",
  { data_type => "float", is_nullable => 1 },
  "cache_12mo_avg_mo_sales",
  { data_type => "float", is_nullable => 1 },
  "cache_12mo_specials_tot_sales",
  { data_type => "float", is_nullable => 1 },
  "cache_updated_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("number", ["number"]);

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

=head2 global_region

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::GlobalRegion>

=cut

__PACKAGE__->belongs_to(
  "global_region",
  "Schema::GreenSheet::Result::GlobalRegion",
  { id => "global_region_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dist_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorStatus>

=cut

__PACKAGE__->belongs_to(
  "dist_status",
  "Schema::GreenSheet::Result::DistributorStatus",
  { id => "dist_status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dist_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorType>

=cut

__PACKAGE__->belongs_to(
  "dist_type",
  "Schema::GreenSheet::Result::DistributorType",
  { id => "dist_type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 dom_intl_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorDomIntlStatus>

=cut

__PACKAGE__->belongs_to(
  "dom_intl_status",
  "Schema::GreenSheet::Result::DistributorDomIntlStatus",
  { id => "dom_intl_status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 distributor_numbers

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorNumber>

=cut

__PACKAGE__->has_many(
  "distributor_numbers",
  "Schema::GreenSheet::Result::DistributorNumber",
  { "foreign.distributor_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_offices

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->has_many(
  "distributor_offices",
  "Schema::GreenSheet::Result::DistributorOffice",
  { "foreign.dist_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_salespeople

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->has_many(
  "distributor_salespeople",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { "foreign.dist_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/J851C/gGsQLmu5QG+UHzw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
