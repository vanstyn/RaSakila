package Schema::Hp3k::Result::KitDetail;

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

Schema::Hp3k::Result::KitDetail

=cut

__PACKAGE__->table("KIT_DETAIL");

=head1 ACCESSORS

=head2 bol_line_key

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 bol_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 whse_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 part_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 rev_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 location

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 lot

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 qty_picked

  data_type: 'double precision'
  is_nullable: 1

=head2 flags_10_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_10_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "bol_line_key",
  { data_type => "char", is_nullable => 1, size => 16 },
  "bol_no",
  { data_type => "char", is_nullable => 1, size => 12 },
  "whse_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "part_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "rev_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "location",
  { data_type => "char", is_nullable => 1, size => 10 },
  "lot",
  { data_type => "char", is_nullable => 1, size => 18 },
  "qty_picked",
  { data_type => "double precision", is_nullable => 1 },
  "flags_10_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_10_10",
  { data_type => "char", is_nullable => 1, size => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IBco+byCGTLwTqS0qvFHtA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
