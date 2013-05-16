package Schema::ItsInventory::Result::Note;

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

Schema::ItsInventory::Result::Note

=cut

__PACKAGE__->table("notes");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 1

=head2 created_by

  data_type: 'integer'
  is_nullable: 1

=head2 edited_by

  data_type: 'integer'
  is_nullable: 1

=head2 item_id

  data_type: 'integer'
  is_nullable: 1

=head2 transaction_id

  data_type: 'integer'
  is_nullable: 1

=head2 created_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 updated_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 deleted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 1 },
  "created_by",
  { data_type => "integer", is_nullable => 1 },
  "edited_by",
  { data_type => "integer", is_nullable => 1 },
  "item_id",
  { data_type => "integer", is_nullable => 1 },
  "transaction_id",
  { data_type => "integer", is_nullable => 1 },
  "created_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "updated_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "deleted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-16 12:13:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RociE8SkaPrLR6HIkLhCZQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
