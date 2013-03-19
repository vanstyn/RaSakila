package Schema::GreenSheet::Result::Email;

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

Schema::GreenSheet::Result::Email

=cut

__PACKAGE__->table("email");

=head1 ACCESSORS

=head2 sha1

  data_type: 'char'
  is_nullable: 0
  size: 40

=head2 to

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 envelope_to

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 from

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 subject

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 data

  data_type: 'text'
  is_nullable: 0

=head2 object_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "sha1",
  { data_type => "char", is_nullable => 0, size => 40 },
  "to",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "envelope_to",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "from",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "subject",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "data",
  { data_type => "text", is_nullable => 0 },
  "object_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("sha1");

=head1 RELATIONS

=head2 object

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "object",
  "Schema::GreenSheet::Result::Object",
  { id => "object_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C3EYcfdK65uEZW+BAtmASQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
