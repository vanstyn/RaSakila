package Schema::GreenSheet::Result::AimRating;

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

Schema::GreenSheet::Result::AimRating

=cut

__PACKAGE__->table("aim_rating");

=head1 ACCESSORS

=head2 rating

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "rating",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("rating");

=head1 RELATIONS

=head2 aims_follow_up

Type: has_many

Related object: L<Schema::GreenSheet::Result::AimFollowUp>

=cut

__PACKAGE__->has_many(
  "aims_follow_up",
  "Schema::GreenSheet::Result::AimFollowUp",
  { "foreign.rating" => "self.rating" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Xci1DKBvHH4Ijj68pPVsDg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
