package Schema::Hp3k::Result::ProductFamily;

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

Schema::Hp3k::Result::ProductFamily

=cut

__PACKAGE__->table("product_family");

=head1 ACCESSORS

=head2 code

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 lead_time

  data_type: 'integer'
  is_nullable: 1

=head2 category_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "char", is_nullable => 0, size => 3 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "lead_time",
  { data_type => "integer", is_nullable => 1 },
  "category_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("code");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductCategory>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Schema::Hp3k::Result::ProductCategory",
  { id => "category_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 product_lists

Type: has_many

Related object: L<Schema::Hp3k::Result::ProductList>

=cut

__PACKAGE__->has_many(
  "product_lists",
  "Schema::Hp3k::Result::ProductList",
  { "foreign.pc1" => "self.code" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D0zvgVCBmcQ5yd/irjNEMQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
