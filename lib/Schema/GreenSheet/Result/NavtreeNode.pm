package Schema::GreenSheet::Result::NavtreeNode;

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

Schema::GreenSheet::Result::NavtreeNode

=cut

__PACKAGE__->table("navtree_node");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 pid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 text

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 iconcls

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 expanded

  data_type: 'tinyint'
  is_nullable: 1

=head2 order

  data_type: 'integer'
  default_value: 500000
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
  "pid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "text",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "iconcls",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "expanded",
  { data_type => "tinyint", is_nullable => 1 },
  "order",
  { data_type => "integer", default_value => 500000, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 pid

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::NavtreeNode>

=cut

__PACKAGE__->belongs_to(
  "pid",
  "Schema::GreenSheet::Result::NavtreeNode",
  { id => "pid" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 navtree_nodes

Type: has_many

Related object: L<Schema::GreenSheet::Result::NavtreeNode>

=cut

__PACKAGE__->has_many(
  "navtree_nodes",
  "Schema::GreenSheet::Result::NavtreeNode",
  { "foreign.pid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 navtree_node_to_roles

Type: has_many

Related object: L<Schema::GreenSheet::Result::NavtreeNodeToRole>

=cut

__PACKAGE__->has_many(
  "navtree_node_to_roles",
  "Schema::GreenSheet::Result::NavtreeNodeToRole",
  { "foreign.node_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 saved_states

Type: has_many

Related object: L<Schema::GreenSheet::Result::SavedState>

=cut

__PACKAGE__->has_many(
  "saved_states",
  "Schema::GreenSheet::Result::SavedState",
  { "foreign.node_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zC9YQHO6MPPU2jpuImeaEQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
