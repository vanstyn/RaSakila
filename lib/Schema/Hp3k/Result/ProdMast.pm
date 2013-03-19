package Schema::Hp3k::Result::ProdMast;

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

Schema::Hp3k::Result::ProdMast

=cut

__PACKAGE__->table("PROD_MAST");

=head1 ACCESSORS

=head2 prod_no

  data_type: 'char'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 18

=head2 descr

  data_type: 'char'
  is_nullable: 1
  size: 60

=head2 price_1

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 price_2

  data_type: 'float'
  default_value: 0
  is_nullable: 0

=head2 cost_1

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_2

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_3

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_4

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_5

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_6

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_7

  data_type: 'double precision'
  is_nullable: 1

=head2 cost_8

  data_type: 'double precision'
  is_nullable: 1

=head2 prod_line

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 prod_line2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 prod_line3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 prod_line4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 prod_line5

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 um

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 umx_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 umx_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 um_qty_1

  data_type: 'integer'
  is_nullable: 1

=head2 um_qty_2

  data_type: 'integer'
  is_nullable: 1

=head2 um_qty_3

  data_type: 'integer'
  is_nullable: 1

=head2 weight

  data_type: 'integer'
  is_nullable: 1

=head2 size_1

  data_type: 'smallint'
  is_nullable: 1

=head2 size_2

  data_type: 'smallint'
  is_nullable: 1

=head2 size_3

  data_type: 'smallint'
  is_nullable: 1

=head2 date_activity

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 gl_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 cos_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 catalog_no

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 date_updated

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 whse_array_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_5

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_6

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_7

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_array_8

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 noun_descr

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 adj_descr

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 part_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 qty_ordered

  data_type: 'double precision'
  is_nullable: 1

=head2 flags_10_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 misc_arr_1

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_2

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_3

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_4

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 misc_arr_5

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 upc_code

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 tariff_code

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 code_tbls_1

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 code_tbls_2

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 code_tbls_3

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 code_tbls_4

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 amt_arr_1

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_2

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_3

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_4

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_5

  data_type: 'integer'
  is_nullable: 1

=head2 amt_arr_6

  data_type: 'integer'
  is_nullable: 1

=head2 divide_trigger_ran

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "prod_no",
  {
    data_type => "char",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 18,
  },
  "descr",
  { data_type => "char", is_nullable => 1, size => 60 },
  "price_1",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "price_2",
  { data_type => "float", default_value => 0, is_nullable => 0 },
  "cost_1",
  { data_type => "double precision", is_nullable => 1 },
  "cost_2",
  { data_type => "double precision", is_nullable => 1 },
  "cost_3",
  { data_type => "double precision", is_nullable => 1 },
  "cost_4",
  { data_type => "double precision", is_nullable => 1 },
  "cost_5",
  { data_type => "double precision", is_nullable => 1 },
  "cost_6",
  { data_type => "double precision", is_nullable => 1 },
  "cost_7",
  { data_type => "double precision", is_nullable => 1 },
  "cost_8",
  { data_type => "double precision", is_nullable => 1 },
  "prod_line",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "prod_line2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "prod_line3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "prod_line4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "prod_line5",
  { data_type => "char", is_nullable => 1, size => 6 },
  "um",
  { data_type => "char", is_nullable => 1, size => 2 },
  "umx_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "umx_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "um_qty_1",
  { data_type => "integer", is_nullable => 1 },
  "um_qty_2",
  { data_type => "integer", is_nullable => 1 },
  "um_qty_3",
  { data_type => "integer", is_nullable => 1 },
  "weight",
  { data_type => "integer", is_nullable => 1 },
  "size_1",
  { data_type => "smallint", is_nullable => 1 },
  "size_2",
  { data_type => "smallint", is_nullable => 1 },
  "size_3",
  { data_type => "smallint", is_nullable => 1 },
  "date_activity",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "gl_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "cos_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "catalog_no",
  { data_type => "char", is_nullable => 1, size => 20 },
  "date_updated",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "whse_array_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_5",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_6",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_7",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_array_8",
  { data_type => "char", is_nullable => 1, size => 2 },
  "noun_descr",
  { data_type => "char", is_nullable => 1, size => 10 },
  "adj_descr",
  { data_type => "char", is_nullable => 1, size => 10 },
  "part_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "qty_ordered",
  { data_type => "double precision", is_nullable => 1 },
  "flags_10_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_10",
  { data_type => "char", is_nullable => 1, size => 1 },
  "misc_arr_1",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_2",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_3",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_4",
  { data_type => "char", is_nullable => 1, size => 6 },
  "misc_arr_5",
  { data_type => "char", is_nullable => 1, size => 6 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "upc_code",
  { data_type => "char", is_nullable => 1, size => 12 },
  "tariff_code",
  { data_type => "char", is_nullable => 1, size => 12 },
  "code_tbls_1",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_2",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_3",
  { data_type => "char", is_nullable => 1, size => 2 },
  "code_tbls_4",
  { data_type => "char", is_nullable => 1, size => 2 },
  "amt_arr_1",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_2",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_3",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_4",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_5",
  { data_type => "integer", is_nullable => 1 },
  "amt_arr_6",
  { data_type => "integer", is_nullable => 1 },
  "divide_trigger_ran",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("prod_no");

=head1 RELATIONS

=head2 invoice_details

Type: has_many

Related object: L<Schema::Hp3k::Result::InvoiceDetail>

=cut

__PACKAGE__->has_many(
  "invoice_details",
  "Schema::Hp3k::Result::InvoiceDetail",
  { "foreign.prod_no" => "self.prod_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 prod_idx

Type: might_have

Related object: L<Schema::Hp3k::Result::ProdIdx>

=cut

__PACKAGE__->might_have(
  "prod_idx",
  "Schema::Hp3k::Result::ProdIdx",
  { "foreign.prod_no" => "self.prod_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 date_activity

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_activity",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_activity" },
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

=head2 prod_no

Type: belongs_to

Related object: L<Schema::Hp3k::Result::ProductList>

=cut

__PACKAGE__->belongs_to(
  "prod_no",
  "Schema::Hp3k::Result::ProductList",
  { prod_no => "prod_no" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 soe_details

Type: has_many

Related object: L<Schema::Hp3k::Result::SoeDetail>

=cut

__PACKAGE__->has_many(
  "soe_details",
  "Schema::Hp3k::Result::SoeDetail",
  { "foreign.prod_no" => "self.prod_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 product_list

Type: might_have

Related object: L<Schema::Hp3k::Result::ProductList>

=cut

__PACKAGE__->might_have(
  "product_list",
  "Schema::Hp3k::Result::ProductList",
  { "foreign.prod_no" => "self.prod_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MxZa0qQIYns+doebraAeVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
