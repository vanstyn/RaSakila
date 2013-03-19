package Schema::Hp3k::Result::ProductList;

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

Schema::Hp3k::Result::ProductList

=cut

__PACKAGE__->table("product_list");

=head1 ACCESSORS

=head2 prod_no

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 0
  size: 18

=head2 unit

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 discount

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 3

=head2 list_price

  data_type: 'float'
  is_nullable: 1

=head2 website_item

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 lean_item

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 qoh

  data_type: 'integer'
  is_nullable: 1

=head2 lead_time

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 pc1

  data_type: 'char'
  default_value: 'ZZZ'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 pc2

  data_type: 'char'
  default_value: 'ZZZ'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 pc3

  data_type: 'char'
  default_value: 'ZZZ'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

=head2 last_change_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 new_change_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "prod_no",
  { data_type => "char", is_foreign_key => 1, is_nullable => 0, size => 18 },
  "unit",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "discount",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 3 },
  "list_price",
  { data_type => "float", is_nullable => 1 },
  "website_item",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "lean_item",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "qoh",
  { data_type => "integer", is_nullable => 1 },
  "lead_time",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "pc1",
  {
    data_type => "char",
    default_value => "ZZZ",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
  },
  "pc2",
  {
    data_type => "char",
    default_value => "ZZZ",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
  },
  "pc3",
  {
    data_type => "char",
    default_value => "ZZZ",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 3,
  },
  "last_change_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "new_change_user_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("prod_no");

=head1 RELATIONS

=head2 prod_mast

Type: might_have

Related object: L<Schema::Hp3k::Result::ProdMast>

=cut

__PACKAGE__->might_have(
  "prod_mast",
  "Schema::Hp3k::Result::ProdMast",
  { "foreign.prod_no" => "self.prod_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 part_attr

Type: might_have

Related object: L<Schema::Hp3k::Result::PartAttr>

=cut

__PACKAGE__->might_have(
  "part_attr",
  "Schema::Hp3k::Result::PartAttr",
  { "foreign.prod_no" => "self.prod_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prod_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProdMast>

=cut

__PACKAGE__->belongs_to(
  "prod_no",
  "Schema::Hp3k::Result::ProdMast",
  { prod_no => "prod_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 pc1

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductFamily>

=cut

__PACKAGE__->belongs_to(
  "pc1",
  "Schema::Hp3k::Result::ProductFamily",
  { code => "pc1" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 pc2

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductGroup>

=cut

__PACKAGE__->belongs_to(
  "pc2",
  "Schema::Hp3k::Result::ProductGroup",
  { code => "pc2" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 pc3

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductOption>

=cut

__PACKAGE__->belongs_to(
  "pc3",
  "Schema::Hp3k::Result::ProductOption",
  { code => "pc3" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 last_change

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductChangeLog>

=cut

__PACKAGE__->belongs_to(
  "last_change",
  "Schema::Hp3k::Result::ProductChangeLog",
  { id => "last_change_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YBHr+OiFk2GL6dHhAT1DLA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
