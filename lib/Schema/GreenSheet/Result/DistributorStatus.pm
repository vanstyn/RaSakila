package Schema::GreenSheet::Result::DistributorStatus;

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

Schema::GreenSheet::Result::DistributorStatus

=cut

__PACKAGE__->table("distributor_status");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("name", ["name"]);

=head1 RELATIONS

=head2 distributors

Type: has_many

Related object: L<Schema::GreenSheet::Result::Distributor>

=cut

__PACKAGE__->has_many(
  "distributors",
  "Schema::GreenSheet::Result::Distributor",
  { "foreign.dist_status_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_offices

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorOffice>

=cut

__PACKAGE__->has_many(
  "distributor_offices",
  "Schema::GreenSheet::Result::DistributorOffice",
  { "foreign.office_status_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 distributor_salespeople

Type: has_many

Related object: L<Schema::GreenSheet::Result::DistributorSalesperson>

=cut

__PACKAGE__->has_many(
  "distributor_salespeople",
  "Schema::GreenSheet::Result::DistributorSalesperson",
  { "foreign.slsp_status_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ozhMJjaVi56w8L++6AdUiw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
