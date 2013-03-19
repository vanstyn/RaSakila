package Schema::GreenSheet::Result::DistToRegion;

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

Schema::GreenSheet::Result::DistToRegion

=cut

__PACKAGE__->table("dist_to_region");

=head1 ACCESSORS

=head2 dist_office_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 region_id

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "dist_office_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "region_id",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 32 },
);
__PACKAGE__->set_primary_key("dist_office_id", "region_id");

=head1 RELATIONS

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

=head2 region

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::DistRegion>

=cut

__PACKAGE__->belongs_to(
  "region",
  "Schema::GreenSheet::Result::DistRegion",
  { region => "region_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dwKvb7A+CM2fFrU2AHKWjw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
