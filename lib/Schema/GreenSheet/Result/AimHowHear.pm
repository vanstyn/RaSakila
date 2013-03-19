package Schema::GreenSheet::Result::AimHowHear;

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

Schema::GreenSheet::Result::AimHowHear

=cut

__PACKAGE__->table("aim_how_hear");

=head1 ACCESSORS

=head2 how_hear

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "how_hear",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("how_hear");

=head1 RELATIONS

=head2 aim_leads

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimLead>

=cut

__PACKAGE__->has_many(
  "aim_leads",
  "Schema::GreenSheet::Result::AimLead",
  { "foreign.how_hear" => "self.how_hear" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qW8ykPDqxQyvY7YWvhAkiQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
