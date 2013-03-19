package Schema::Hp3k::Result::ChgLog;

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

Schema::Hp3k::Result::ChgLog

=cut

__PACKAGE__->table("CHG_LOG");

=head1 ACCESSORS

=head2 parent

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 field_name

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 screen_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 value_before

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 value_after

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 flags_4_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_4_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_4_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_4_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 div_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 date_updated

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 time_of_day

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "parent",
  { data_type => "char", is_nullable => 1, size => 20 },
  "field_name",
  { data_type => "char", is_nullable => 1, size => 16 },
  "screen_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "value_before",
  { data_type => "char", is_nullable => 1, size => 30 },
  "value_after",
  { data_type => "char", is_nullable => 1, size => 30 },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 8 },
  "flags_4_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_4_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_4_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_4_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "div_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "date_updated",
  { data_type => "char", is_nullable => 1, size => 6 },
  "time_of_day",
  { data_type => "smallint", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wQm5pKGPabD8n26UWyRS3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
