package Schema::Sakila::Result::Country;

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

Schema::Sakila::Result::Country

=cut

__PACKAGE__->table("country");

=head1 ACCESSORS

=head2 country_id

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 country

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 last_update

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "country_id",
  {
    data_type => "smallint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "country",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "last_update",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("country_id");

=head1 RELATIONS

=head2 cities

Type: has_many

Related object: L<Schema::Sakila::Result::City>

=cut

__PACKAGE__->has_many(
  "cities",
  "Schema::Sakila::Result::City",
  { "foreign.country_id" => "self.country_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:09:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LyCRwHUr/RqehWruDTk9iQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
