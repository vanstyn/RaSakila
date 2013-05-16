package Schema::ItsInventory::Result::Audit;

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

Schema::ItsInventory::Result::Audit

=cut

__PACKAGE__->table("audits");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 auditable_id

  data_type: 'integer'
  is_nullable: 1

=head2 auditable_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 user_id

  data_type: 'integer'
  is_nullable: 1

=head2 user_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 action

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 changes

  data_type: 'text'
  is_nullable: 1

=head2 version

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 created_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "auditable_id",
  { data_type => "integer", is_nullable => 1 },
  "auditable_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "user_id",
  { data_type => "integer", is_nullable => 1 },
  "user_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "username",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "action",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "changes",
  { data_type => "text", is_nullable => 1 },
  "version",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "created_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-16 12:13:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a9IUeOW8Vvpf9s5lwZty4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
