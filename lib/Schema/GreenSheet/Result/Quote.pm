package Schema::GreenSheet::Result::Quote;

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

Schema::GreenSheet::Result::Quote

=cut

__PACKAGE__->table("quote");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 project_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 expires_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 sent_to

  data_type: 'varchar'
  is_nullable: 0
  size: 1024

=head2 bcc_to

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 cust_company_name

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 cust_contact_name

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 price

  data_type: 'float'
  is_nullable: 1

=head2 min_qty

  data_type: 'integer'
  is_nullable: 1

=head2 delivery_time

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 notes

  data_type: 'text'
  is_nullable: 1

=head2 sent_msg

  data_type: 'text'
  is_nullable: 0

=head2 discount_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 dist_salesperson_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 rsm_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 quote_status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "project_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "expires_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "sent_to",
  { data_type => "varchar", is_nullable => 0, size => 1024 },
  "bcc_to",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "cust_company_name",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "cust_contact_name",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "price",
  { data_type => "float", is_nullable => 1 },
  "min_qty",
  { data_type => "integer", is_nullable => 1 },
  "delivery_time",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "notes",
  { data_type => "text", is_nullable => 1 },
  "sent_msg",
  { data_type => "text", is_nullable => 0 },
  "discount_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "dist_salesperson_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "rsm_user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "quote_status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");

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

=head2 project

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->belongs_to(
  "project",
  "Schema::GreenSheet::Result::Project",
  { id => "project_id" },
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

=head2 dist

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->belongs_to(
  "dist",
  "Schema::GreenSheet::Result::DistributorOffice",
  { id => "dist_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 dist_salesperson

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->belongs_to(
  "dist_salesperson",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { id => "dist_salesperson_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 rsm_user

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "rsm_user",
  "Schema::GreenSheet::Result::User",
  { id => "rsm_user_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 quote_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::QuoteStatus>

=cut

__PACKAGE__->belongs_to(
  "quote_status",
  "Schema::GreenSheet::Result::QuoteStatus",
  { id => "quote_status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:71YxPU3OyeMLKumYTUk+DA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
