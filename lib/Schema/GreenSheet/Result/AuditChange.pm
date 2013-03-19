package Schema::GreenSheet::Result::AuditChange;

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

Schema::GreenSheet::Result::AuditChange

=cut

__PACKAGE__->table("audit_change");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 changeset_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 elapsed

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 action

  data_type: 'char'
  is_nullable: 0
  size: 6

=head2 source

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 row_key

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "changeset_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "elapsed",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "action",
  { data_type => "char", is_nullable => 0, size => 6 },
  "source",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "row_key",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 changeset

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AuditChangeSet>

=cut

__PACKAGE__->belongs_to(
  "changeset",
  "Schema::GreenSheet::Result::AuditChangeSet",
  { id => "changeset_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 audit_change_columns

Type: has_many

Related object: L<Schema::GreenSheet::Result::AuditChangeColumn>

=cut

__PACKAGE__->has_many(
  "audit_change_columns",
  "Schema::GreenSheet::Result::AuditChangeColumn",
  { "foreign.change_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5ardOYbJrKPqQejjK/ZUVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
