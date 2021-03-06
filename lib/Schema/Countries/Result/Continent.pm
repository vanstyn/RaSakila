package Schema::Countries::Result::Continent;

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

Schema::Countries::Result::Continent

=cut

__PACKAGE__->table("Continent");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);
__PACKAGE__->set_primary_key("name");

=head1 RELATIONS

=head2 countryinfos

Type: has_many

Related object: L<Schema::Countries::Result::Countryinfo>

=cut

__PACKAGE__->has_many(
  "countryinfos",
  "Schema::Countries::Result::Countryinfo",
  { "foreign.continent" => "self.name" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-08 13:46:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:73IBaBXwFQL3kPF2b9bs9g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
