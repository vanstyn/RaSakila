package Schema::GreenSheet::Result::Discount;

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

Schema::GreenSheet::Result::Discount

=cut

__PACKAGE__->table("discount");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 discount

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
  "discount",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("discount", ["discount"]);

=head1 RELATIONS

=head2 discount_lookups

Type: has_many

Related object: L<Schema::GreenSheet::Result::DiscountLookup>

=cut

__PACKAGE__->has_many(
  "discount_lookups",
  "Schema::GreenSheet::Result::DiscountLookup",
  { "foreign.discount_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 projects

Type: has_many

Related object: L<Schema::GreenSheet::Result::Project>

=cut

__PACKAGE__->has_many(
  "projects",
  "Schema::GreenSheet::Result::Project",
  { "foreign.discount_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 quotes

Type: has_many

Related object: L<Schema::GreenSheet::Result::Quote>

=cut

__PACKAGE__->has_many(
  "quotes",
  "Schema::GreenSheet::Result::Quote",
  { "foreign.discount_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6zNsGNwrCMvkCdAMU0Jfvg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
