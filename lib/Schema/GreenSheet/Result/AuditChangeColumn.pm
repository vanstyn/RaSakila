package Schema::GreenSheet::Result::AuditChangeColumn;

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

Schema::GreenSheet::Result::AuditChangeColumn

=cut

__PACKAGE__->table("audit_change_column");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 change_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 column

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 header

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 old

  data_type: 'mediumtext'
  is_nullable: 1

=head2 new

  accessor: 'column_new'
  data_type: 'mediumtext'
  is_nullable: 1

=head2 old_display

  data_type: 'text'
  is_nullable: 1

=head2 new_display

  data_type: 'text'
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
  "change_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "column",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "header",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "old",
  { data_type => "mediumtext", is_nullable => 1 },
  "new",
  { accessor => "column_new", data_type => "mediumtext", is_nullable => 1 },
  "old_display",
  { data_type => "text", is_nullable => 1 },
  "new_display",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("change_id", ["change_id", "column"]);

=head1 RELATIONS

=head2 change

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AuditChange>

=cut

__PACKAGE__->belongs_to(
  "change",
  "Schema::GreenSheet::Result::AuditChange",
  { id => "change_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ysLwdYxKPOWkhdKUiKgluA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
