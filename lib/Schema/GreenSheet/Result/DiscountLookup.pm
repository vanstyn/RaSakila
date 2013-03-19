package Schema::GreenSheet::Result::DiscountLookup;

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

Schema::GreenSheet::Result::DiscountLookup

=cut

__PACKAGE__->table("discount_lookups");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 discount_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 low_qty

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 high_qty

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 pct

  data_type: 'float'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "discount_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "low_qty",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "high_qty",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "type_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "pct",
  { data_type => "float", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint(
  "discount_id",
  ["discount_id", "low_qty", "high_qty", "type_id"],
);

=head1 RELATIONS

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

=head2 type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DiscountLookupsType>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::GreenSheet::Result::DiscountLookupsType",
  { id => "type_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9fraqgN6yeu9nnxEQh+j9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
