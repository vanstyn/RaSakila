package Schema::Hp3k::Result::OptionPrice;

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

Schema::Hp3k::Result::OptionPrice

=cut

__PACKAGE__->table("OPTION_PRICE");

=head1 ACCESSORS

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 opt_name

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 opt_value

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 part_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 price_1

  data_type: 'bigint'
  is_nullable: 1

=head2 price_2

  data_type: 'bigint'
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

=head2 date_eff

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 date_obs

  data_type: 'char'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "opt_name",
  { data_type => "char", is_nullable => 1, size => 18 },
  "opt_value",
  { data_type => "char", is_nullable => 1, size => 18 },
  "part_no",
  { data_type => "char", is_nullable => 1, size => 18 },
  "price_1",
  { data_type => "bigint", is_nullable => 1 },
  "price_2",
  { data_type => "bigint", is_nullable => 1 },
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
  "date_eff",
  { data_type => "char", is_nullable => 1, size => 6 },
  "date_obs",
  { data_type => "char", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Wp5sKnWVbcBt0wErJmeH5w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
