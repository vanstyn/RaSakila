package Schema::Countries::Result::Countryinfo;

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

Schema::Countries::Result::Countryinfo

=cut

__PACKAGE__->table("countryinfo");

=head1 ACCESSORS

=head2 code

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 3

=head2 name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 52

=head2 continent

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 32

=head2 region

  data_type: 'char'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 26

=head2 surfacearea

  data_type: 'float'
  default_value: 0.00
  is_nullable: 0
  size: [10,2]

=head2 yearofindep

  data_type: 'smallint'
  is_nullable: 1

=head2 population

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 lifeexpectancy

  data_type: 'float'
  is_nullable: 1
  size: [3,1]

=head2 gnp

  data_type: 'float'
  is_nullable: 1
  size: [10,2]

=head2 localname

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 formofgovernment

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 0
  size: 45

=head2 headofstate

  data_type: 'char'
  is_nullable: 1
  size: 60

=head2 code2

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 2

=cut

__PACKAGE__->add_columns(
  "code",
  { data_type => "char", default_value => "", is_nullable => 0, size => 3 },
  "name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 52 },
  "continent",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 32 },
  "region",
  {
    data_type => "char",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 26,
  },
  "surfacearea",
  {
    data_type => "float",
    default_value => "0.00",
    is_nullable => 0,
    size => [10, 2],
  },
  "yearofindep",
  { data_type => "smallint", is_nullable => 1 },
  "population",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "lifeexpectancy",
  { data_type => "float", is_nullable => 1, size => [3, 1] },
  "gnp",
  { data_type => "float", is_nullable => 1, size => [10, 2] },
  "localname",
  { data_type => "char", default_value => "", is_nullable => 0, size => 45 },
  "formofgovernment",
  { data_type => "char", is_foreign_key => 1, is_nullable => 0, size => 45 },
  "headofstate",
  { data_type => "char", is_nullable => 1, size => 60 },
  "code2",
  { data_type => "char", default_value => "", is_nullable => 0, size => 2 },
);
__PACKAGE__->set_primary_key("code");

=head1 RELATIONS

=head2 continent

Type: belongs_to

Related object: L<Schema::Countries::Result::Continent>

=cut

__PACKAGE__->belongs_to(
  "continent",
  "Schema::Countries::Result::Continent",
  { name => "continent" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 region

Type: belongs_to

Related object: L<Schema::Countries::Result::Region>

=cut

__PACKAGE__->belongs_to(
  "region",
  "Schema::Countries::Result::Region",
  { name => "region" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 formofgovernment

Type: belongs_to

Related object: L<Schema::Countries::Result::FormofGovernment>

=cut

__PACKAGE__->belongs_to(
  "formofgovernment",
  "Schema::Countries::Result::FormofGovernment",
  { name => "formofgovernment" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-08 13:51:51
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/cI8S6O/eLWya0LB+p4b/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
