package Schema::GreenSheet::Result::AimFollowUp;

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

Schema::GreenSheet::Result::AimFollowUp

=cut

__PACKAGE__->table("aim_follow_up");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 aim_lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 dist_office_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 follow_up_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 contact_type

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 contact_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 follow_up_status

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 outcome

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 follow_up_days

  data_type: 'integer'
  is_nullable: 1

=head2 rating

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 255

=head2 follow_up_action

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 follow_up_notes

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
  "aim_lead_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "dist_office_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "follow_up_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "contact_type",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "contact_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "follow_up_status",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "outcome",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "follow_up_days",
  { data_type => "integer", is_nullable => 1 },
  "rating",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 255 },
  "follow_up_action",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "follow_up_notes",
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

=head2 dist_office

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->belongs_to(
  "dist_office",
  "Schema::GreenSheet::Result::DistributorOffice",
  { id => "dist_office_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 aim_lead

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimLead>

=cut

__PACKAGE__->belongs_to(
  "aim_lead",
  "Schema::GreenSheet::Result::AimLead",
  { id => "aim_lead_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 contact_type

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimFollowUpContactType>

=cut

__PACKAGE__->belongs_to(
  "contact_type",
  "Schema::GreenSheet::Result::AimFollowUpContactType",
  { type => "contact_type" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 rating

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimRating>

=cut

__PACKAGE__->belongs_to(
  "rating",
  "Schema::GreenSheet::Result::AimRating",
  { rating => "rating" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 follow_up_status

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimFollowUpStatus>

=cut

__PACKAGE__->belongs_to(
  "follow_up_status",
  "Schema::GreenSheet::Result::AimFollowUpStatus",
  { status => "follow_up_status" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:v88y6LDeQ8yIQHVeLYzvrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
