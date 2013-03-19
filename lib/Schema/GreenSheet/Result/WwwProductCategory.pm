package Schema::GreenSheet::Result::WwwProductCategory;

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

Schema::GreenSheet::Result::WwwProductCategory

=cut

__PACKAGE__->table("www_product_category");

=head1 ACCESSORS

=head2 cat_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 parent_id

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 sort_order

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 display

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 pattern_csv

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "cat_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "parent_id",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "sort_order",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "display",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "pattern_csv",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("cat_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:o7Tx2S+h4snLk4L9si+XOw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
