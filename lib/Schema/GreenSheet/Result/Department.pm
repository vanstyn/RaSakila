package Schema::GreenSheet::Result::Department;

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

Schema::GreenSheet::Result::Department

=cut

__PACKAGE__->table("department");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 dept_no

  data_type: 'char'
  is_nullable: 0
  size: 6

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 category

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 location

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sq_feet

  data_type: 'integer'
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
  "dept_no",
  { data_type => "char", is_nullable => 0, size => 6 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "category",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "location",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "sq_feet",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("dept_no", ["dept_no"]);
__PACKAGE__->add_unique_constraint("name", ["name"]);

=head1 RELATIONS

=head2 employees

Type: has_many

Related object: L<Schema::GreenSheet::Result::Employee>

=cut

__PACKAGE__->has_many(
  "employees",
  "Schema::GreenSheet::Result::Employee",
  { "foreign.department_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 processes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Process>

=cut

__PACKAGE__->has_many(
  "processes",
  "Schema::GreenSheet::Result::Process",
  { "foreign.department_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:S4KVSX/Vf4iyvgIeRY8AFQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
