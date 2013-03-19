package Schema::GreenSheet::Result::SavedState;

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

Schema::GreenSheet::Result::SavedState

=cut

__PACKAGE__->table("saved_state");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 subtitle

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 node_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 order

  data_type: 'integer'
  default_value: 500001
  is_nullable: 0

=head2 rank

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 iconcls

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 params

  data_type: 'text'
  is_nullable: 1

=head2 state_data

  data_type: 'text'
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
  "title",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "subtitle",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "node_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "order",
  { data_type => "integer", default_value => 500001, is_nullable => 0 },
  "rank",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "iconcls",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "params",
  { data_type => "text", is_nullable => 1 },
  "state_data",
  { data_type => "text", is_nullable => 1 },
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

=head2 node

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::NavtreeNode>

=cut

__PACKAGE__->belongs_to(
  "node",
  "Schema::GreenSheet::Result::NavtreeNode",
  { id => "node_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 view_url_aliases

Type: has_many

Related object: L<Schema::GreenSheet::Result::ViewUrlAlias>

=cut

__PACKAGE__->has_many(
  "view_url_aliases",
  "Schema::GreenSheet::Result::ViewUrlAlias",
  { "foreign.search_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:o0b4+1n03hjroAQ7o6s5eQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
