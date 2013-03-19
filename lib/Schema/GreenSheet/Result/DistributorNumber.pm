package Schema::GreenSheet::Result::DistributorNumber;

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

Schema::GreenSheet::Result::DistributorNumber

=cut

__PACKAGE__->table("distributor_number");

=head1 ACCESSORS

=head2 distributor_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 number

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "distributor_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "number",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("distributor_id", "number");
__PACKAGE__->add_unique_constraint("number", ["number"]);

=head1 RELATIONS

=head2 distributor

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Distributor>

=cut

__PACKAGE__->belongs_to(
  "distributor",
  "Schema::GreenSheet::Result::Distributor",
  { id => "distributor_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q/4n7PtMiZqekxqpTnJ63g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
