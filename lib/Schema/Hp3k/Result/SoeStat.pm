package Schema::Hp3k::Result::SoeStat;

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

Schema::Hp3k::Result::SoeStat

=cut

__PACKAGE__->table("SOE_STAT");

=head1 ACCESSORS

=head2 order_key

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 order_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 order_status

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 reason_code

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 note_code

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 time_of_day

  data_type: 'smallint'
  is_nullable: 1

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 comment1

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 extra_id

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 time2

  data_type: 'char'
  is_nullable: 1
  size: 4

=cut

__PACKAGE__->add_columns(
  "order_key",
  { data_type => "char", is_nullable => 1, size => 14 },
  "order_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "order_status",
  { data_type => "char", is_nullable => 1, size => 2 },
  "reason_code",
  { data_type => "char", is_nullable => 1, size => 4 },
  "note_code",
  { data_type => "char", is_nullable => 1, size => 8 },
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "time_of_day",
  { data_type => "smallint", is_nullable => 1 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "comment1",
  { data_type => "char", is_nullable => 1, size => 30 },
  "extra_id",
  { data_type => "char", is_nullable => 1, size => 8 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
  "time2",
  { data_type => "char", is_nullable => 1, size => 4 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7EM4TvkJ++S2nmZfvWOXyQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
