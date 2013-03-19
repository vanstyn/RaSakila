package Schema::GreenSheet::Result::Process;

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

Schema::GreenSheet::Result::Process

=cut

__PACKAGE__->table("process");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 prefix

  data_type: 'varchar'
  default_value: 'WI'
  is_nullable: 0
  size: 255

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 base_pn

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 department_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 process_type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 status_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 process_owner_id

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 content

  data_type: 'text'
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
  "prefix",
  {
    data_type => "varchar",
    default_value => "WI",
    is_nullable => 0,
    size => 255,
  },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "base_pn",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "department_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "process_type_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "status_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "process_owner_id",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "content",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");

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

=head2 process_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::ProcessType>

=cut

__PACKAGE__->belongs_to(
  "process_type",
  "Schema::GreenSheet::Result::ProcessType",
  { id => "process_type_id" },
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
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::ProcessStatus>

=cut

__PACKAGE__->belongs_to(
  "status",
  "Schema::GreenSheet::Result::ProcessStatus",
  { id => "status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 process_owner

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::User>

=cut

__PACKAGE__->belongs_to(
  "process_owner",
  "Schema::GreenSheet::Result::User",
  { id => "process_owner_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 process_steps

Type: has_many

Related object: L<Schema::GreenSheet::Result::ProcessStep>

=cut

__PACKAGE__->has_many(
  "process_steps",
  "Schema::GreenSheet::Result::ProcessStep",
  { "foreign.process_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 process_trainings

Type: has_many

Related object: L<Schema::GreenSheet::Result::ProcessTraining>

=cut

__PACKAGE__->has_many(
  "process_trainings",
  "Schema::GreenSheet::Result::ProcessTraining",
  { "foreign.process_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aYQcoV8DuHXiz2y8M0261w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
