package Schema::Sakila::Result::Actor;

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

Schema::Sakila::Result::Actor

=cut

__PACKAGE__->table("actor");

=head1 ACCESSORS

=head2 actor_id

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 first_name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 last_name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 last_update

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "actor_id",
  {
    data_type => "smallint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "first_name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "last_name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "last_update",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("actor_id");

=head1 RELATIONS

=head2 film_actors

Type: has_many

Related object: L<Schema::Sakila::Result::FilmActor>

=cut

__PACKAGE__->has_many(
  "film_actors",
  "Schema::Sakila::Result::FilmActor",
  { "foreign.actor_id" => "self.actor_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:09:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Uzk6MBOaDRTWaVS67l4kVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
