package Schema::GreenSheet::Result::GlobalPropertyRevision;

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

Schema::GreenSheet::Result::GlobalPropertyRevision

=cut

__PACKAGE__->table("global_property_revision");

=head1 ACCESSORS

=head2 current_name

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 64

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 value

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 meta_value

  data_type: 'mediumtext'
  is_nullable: 1

=head2 update_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 update_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 info

  data_type: 'text'
  is_nullable: 1

=head2 rev

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "current_name",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 64 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "value",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "meta_value",
  { data_type => "mediumtext", is_nullable => 1 },
  "update_user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "update_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "info",
  { data_type => "text", is_nullable => 1 },
  "rev",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("current_name", "rev");

=head1 RELATIONS

=head2 update_user

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "update_user",
  "Schema::GreenSheet::Result::User",
  { id => "update_user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 current_name

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::GlobalProperty>

=cut

__PACKAGE__->belongs_to(
  "current_name",
  "Schema::GreenSheet::Result::GlobalProperty",
  { name => "current_name" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rHS1DbKN1EusCvzP4+TxCw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
