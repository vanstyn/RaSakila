package Schema::GreenSheet::Result::Exception;

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

Schema::GreenSheet::Result::Exception

=cut

__PACKAGE__->table("exception");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 who

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 what

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 where

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 why

  data_type: 'blob'
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
  "who",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "what",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "where",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "why",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 who

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "who",
  "Schema::GreenSheet::Result::User",
  { id => "who" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aNnu+DiWM5dCMcnzjvwnZA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
