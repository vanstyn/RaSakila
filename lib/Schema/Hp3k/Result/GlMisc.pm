package Schema::Hp3k::Result::GlMisc;

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

Schema::Hp3k::Result::GlMisc

=cut

__PACKAGE__->table("GL_MISC");

=head1 ACCESSORS

=head2 invoice_no

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 date_applied

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 fisc

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 amt_applied

  data_type: 'integer'
  is_nullable: 1

=head2 gl_debit

  data_type: 'char'
  is_nullable: 1
  size: 18

=head2 gl_credit

  data_type: 'char'
  is_nullable: 1
  size: 18

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

=head2 inv_item

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 prod_no

  data_type: 'char'
  is_nullable: 1
  size: 18

=cut

__PACKAGE__->add_columns(
  "invoice_no",
  { data_type => "char", is_nullable => 1, size => 12 },
  "date_applied",
  { data_type => "char", is_nullable => 1, size => 6 },
  "fisc",
  { data_type => "char", is_nullable => 1, size => 4 },
  "amt_applied",
  { data_type => "integer", is_nullable => 1 },
  "gl_debit",
  { data_type => "char", is_nullable => 1, size => 18 },
  "gl_credit",
  { data_type => "char", is_nullable => 1, size => 18 },
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
  "inv_item",
  { data_type => "char", is_nullable => 1, size => 4 },
  "prod_no",
  { data_type => "char", is_nullable => 1, size => 18 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XpWzM1JO2qQ8ZPbLgEQKvA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
