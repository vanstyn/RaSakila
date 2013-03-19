package Schema::GreenSheet::Result::AimContact;

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

Schema::GreenSheet::Result::AimContact

=cut

__PACKAGE__->table("aim_contact");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 lead_contact_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 lead_contact_type

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 255

=head2 mailing_list

  data_type: 'tinyint'
  default_value: 1
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
  "lead_contact_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "lead_contact_type",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 255 },
  "mailing_list",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
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

=head2 lead_contact_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimContactType>

=cut

__PACKAGE__->belongs_to(
  "lead_contact_type",
  "Schema::GreenSheet::Result::AimContactType",
  { type => "lead_contact_type" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 aim_leads

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimLead>

=cut

__PACKAGE__->has_many(
  "aim_leads",
  "Schema::GreenSheet::Result::AimLead",
  { "foreign.aim_contact_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r+kI9yXE9Mlh28FxF4TRxQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
