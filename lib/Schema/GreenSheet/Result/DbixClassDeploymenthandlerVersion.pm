package Schema::GreenSheet::Result::DbixClassDeploymenthandlerVersion;

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

Schema::GreenSheet::Result::DbixClassDeploymenthandlerVersion

=cut

__PACKAGE__->table("dbix_class_deploymenthandler_versions");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 ddl

  data_type: 'text'
  is_nullable: 1

=head2 upgrade_sql

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "version",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "ddl",
  { data_type => "text", is_nullable => 1 },
  "upgrade_sql",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("dbix_class_deploymenthandler_versions_version", ["version"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qIkKwhpFrcumlylwoHdKpQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
