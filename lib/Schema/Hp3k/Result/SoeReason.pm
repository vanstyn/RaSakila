package Schema::Hp3k::Result::SoeReason;

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

Schema::Hp3k::Result::SoeReason

=cut

__PACKAGE__->table("SOE_REASON");

=head1 ACCESSORS

=head2 serial_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 order_no

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 note_code

  data_type: 'char'
  is_nullable: 1
  size: 8

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

=head2 date_updated

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 time_of_day

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "serial_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "order_no",
  { data_type => "char", is_nullable => 1, size => 10 },
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "note_code",
  { data_type => "char", is_nullable => 1, size => 8 },
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
  "date_updated",
  { data_type => "char", is_nullable => 1, size => 6 },
  "time_of_day",
  { data_type => "smallint", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YrdLCKawnLncbXfdzyNZyw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
