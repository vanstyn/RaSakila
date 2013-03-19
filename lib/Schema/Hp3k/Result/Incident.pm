package Schema::Hp3k::Result::Incident;

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

Schema::Hp3k::Result::Incident

=cut

__PACKAGE__->table("INCIDENT");

=head1 ACCESSORS

=head2 order_status

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 parent

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 filler12

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 date_updated

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 flags_50_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_7

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_8

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_9

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_11

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_12

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_13

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_14

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_15

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_16

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_17

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_18

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_19

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_20

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_21

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_22

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_23

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_24

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_25

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_26

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_27

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_28

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_29

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_30

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_31

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_32

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_33

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_34

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_35

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_36

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_37

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_38

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_39

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_40

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_41

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_42

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_43

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_44

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_45

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_46

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_47

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_48

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_49

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_50_50

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 div_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 whse_no

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 priority

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 date_wanted

  data_type: 'char'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "order_status",
  { data_type => "char", is_nullable => 1, size => 2 },
  "parent",
  { data_type => "char", is_nullable => 1, size => 20 },
  "filler12",
  { data_type => "char", is_nullable => 1, size => 12 },
  "date_updated",
  { data_type => "char", is_nullable => 1, size => 6 },
  "flags_50_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_7",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_8",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_9",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_10",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_11",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_12",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_13",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_14",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_15",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_16",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_17",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_18",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_19",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_20",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_21",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_22",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_23",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_24",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_25",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_26",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_27",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_28",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_29",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_30",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_31",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_32",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_33",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_34",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_35",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_36",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_37",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_38",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_39",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_40",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_41",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_42",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_43",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_44",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_45",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_46",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_47",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_48",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_49",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_50_50",
  { data_type => "char", is_nullable => 1, size => 1 },
  "div_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "whse_no",
  { data_type => "char", is_nullable => 1, size => 2 },
  "priority",
  { data_type => "char", is_nullable => 1, size => 2 },
  "date_wanted",
  { data_type => "char", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sd1L6SJGpPhqtpyhW4Gkug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
