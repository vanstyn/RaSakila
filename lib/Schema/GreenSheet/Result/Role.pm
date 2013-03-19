package Schema::GreenSheet::Result::Role;

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

Schema::GreenSheet::Result::Role

=cut

__PACKAGE__->table("roles");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 role

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "role",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("role", ["role"]);

=head1 RELATIONS

=head2 navtree_node_to_roles

Type: has_many

Related object: L<Schema::GreenSheet::Result::NavtreeNodeToRole>

=cut

__PACKAGE__->has_many(
  "navtree_node_to_roles",
  "Schema::GreenSheet::Result::NavtreeNodeToRole",
  { "foreign.role" => "self.role" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_to_roles

Type: has_many

Related object: L<Schema::GreenSheet::Result::UserToRole>

=cut

__PACKAGE__->has_many(
  "user_to_roles",
  "Schema::GreenSheet::Result::UserToRole",
  { "foreign.role_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6qk0HnnykMfiSZTnP+GfEw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
