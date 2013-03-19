package Schema::GreenSheet::Result::SearchBox;

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

Schema::GreenSheet::Result::SearchBox

=cut

__PACKAGE__->table("search_box");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 order

  data_type: 'integer'
  default_value: 100
  extra: {unsigned => 1}
  is_nullable: 0

=head2 region

  data_type: 'varchar'
  default_value: 'main_dash'
  is_nullable: 0
  size: 32

=head2 heading

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 submit_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 css_style

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 template

  data_type: 'varchar'
  default_value: 'templates/dashboard/search_box.tt'
  is_nullable: 1
  size: 1024

=head2 active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "order",
  {
    data_type => "integer",
    default_value => 100,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "region",
  {
    data_type => "varchar",
    default_value => "main_dash",
    is_nullable => 0,
    size => 32,
  },
  "heading",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "submit_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "css_style",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "template",
  {
    data_type => "varchar",
    default_value => "templates/dashboard/search_box.tt",
    is_nullable => 1,
    size => 1024,
  },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BiLpJTWes8JKA8aGSbGldQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
