package Schema::GreenSheet::Result::StateAlias;

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

Schema::GreenSheet::Result::StateAlias

=cut

__PACKAGE__->table("state_alias");

=head1 ACCESSORS

=head2 state

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 64

=head2 alias

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "state",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 64 },
  "alias",
  { data_type => "varchar", is_nullable => 0, size => 64 },
);
__PACKAGE__->set_primary_key("state", "alias");

=head1 RELATIONS

=head2 state

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::State>

=cut

__PACKAGE__->belongs_to(
  "state",
  "Schema::GreenSheet::Result::State",
  { state => "state" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wzmCIwAl/gng/oQrlymGUA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
