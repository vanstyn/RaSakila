package Schema::GreenSheet::Result::AimLeadToLiterature;

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

Schema::GreenSheet::Result::AimLeadToLiterature

=cut

__PACKAGE__->table("aim_lead_to_literature");

=head1 ACCESSORS

=head2 aim_lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 literature

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "aim_lead_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "literature",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 64 },
);
__PACKAGE__->set_primary_key("aim_lead_id", "literature");

=head1 RELATIONS

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

=head2 literature

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::AimLiterature>

=cut

__PACKAGE__->belongs_to(
  "literature",
  "Schema::GreenSheet::Result::AimLiterature",
  { literature => "literature" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sECz95LbgXIufOkUNMqzxA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
