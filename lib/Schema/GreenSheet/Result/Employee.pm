package Schema::GreenSheet::Result::Employee;

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

Schema::GreenSheet::Result::Employee

=cut

__PACKAGE__->table("employee");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 display_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 employee_no

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hired

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 terminated

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 job_title_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 department_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 dob

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 w4

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cil_ext

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 pay_type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 active_status_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 er_contact

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 er_relation

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 er_phone

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 er_location

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 auto_lplate

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 auto_make_model

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 auto_color

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 hr_notes

  data_type: 'text'
  is_nullable: 1

=head2 private_dob

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "display_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "employee_no",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "hired",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "terminated",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "job_title_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "department_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "dob",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "w4",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cil_ext",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "type_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "pay_type_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "active_status_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "er_contact",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "er_relation",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "er_phone",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "er_location",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "auto_lplate",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "auto_make_model",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "auto_color",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "hr_notes",
  { data_type => "text", is_nullable => 1 },
  "private_dob",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("employee_no", ["employee_no"]);

=head1 RELATIONS

=head2 id

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "id",
  "Schema::GreenSheet::Result::Object",
  { id => "id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 department

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Department>

=cut

__PACKAGE__->belongs_to(
  "department",
  "Schema::GreenSheet::Result::Department",
  { id => "department_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 job_title

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::JobTitle>

=cut

__PACKAGE__->belongs_to(
  "job_title",
  "Schema::GreenSheet::Result::JobTitle",
  { id => "job_title_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::EmployeeType>

=cut

__PACKAGE__->belongs_to(
  "type",
  "Schema::GreenSheet::Result::EmployeeType",
  { id => "type_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 pay_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::EmployeePayType>

=cut

__PACKAGE__->belongs_to(
  "pay_type",
  "Schema::GreenSheet::Result::EmployeePayType",
  { id => "pay_type_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 active_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::EmployeeActiveStatus>

=cut

__PACKAGE__->belongs_to(
  "active_status",
  "Schema::GreenSheet::Result::EmployeeActiveStatus",
  { id => "active_status_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 process_trainings

Type: has_many

Related object: L<Schema::GreenSheet::Result::ProcessTraining>

=cut

__PACKAGE__->has_many(
  "process_trainings",
  "Schema::GreenSheet::Result::ProcessTraining",
  { "foreign.trained_employee_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ni2pgsAnvFUx1bNuiYmM+A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
