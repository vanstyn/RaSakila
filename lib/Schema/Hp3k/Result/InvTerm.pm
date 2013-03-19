package Schema::Hp3k::Result::InvTerm;

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

Schema::Hp3k::Result::InvTerm

=cut

__PACKAGE__->table("INV_TERMS");

=head1 ACCESSORS

=head2 terms_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 descr30

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 disc_pct

  data_type: 'smallint'
  is_nullable: 1

=head2 disc_days

  data_type: 'smallint'
  is_nullable: 1

=head2 disc_ndays

  data_type: 'smallint'
  is_nullable: 1

=head2 disc_mth

  data_type: 'smallint'
  is_nullable: 1

=head2 disc_day

  data_type: 'smallint'
  is_nullable: 1

=head2 disc_mdays

  data_type: 'smallint'
  is_nullable: 1

=head2 term_days_1

  data_type: 'smallint'
  is_nullable: 1

=head2 term_days_2

  data_type: 'smallint'
  is_nullable: 1

=head2 term_days_3

  data_type: 'smallint'
  is_nullable: 1

=head2 term_days_4

  data_type: 'smallint'
  is_nullable: 1

=head2 term_days_5

  data_type: 'smallint'
  is_nullable: 1

=head2 term_days_6

  data_type: 'smallint'
  is_nullable: 1

=head2 payment_age_1

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_2

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_3

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_4

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_5

  data_type: 'integer'
  is_nullable: 1

=head2 payment_age_6

  data_type: 'integer'
  is_nullable: 1

=head2 flags_6_1

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_2

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_3

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_4

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_5

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 flags_6_6

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 prox_terms_1

  data_type: 'smallint'
  is_nullable: 1

=head2 prox_terms_2

  data_type: 'smallint'
  is_nullable: 1

=head2 prox_terms_3

  data_type: 'smallint'
  is_nullable: 1

=head2 prox_terms_4

  data_type: 'smallint'
  is_nullable: 1

=head2 prox_terms_5

  data_type: 'smallint'
  is_nullable: 1

=head2 prox_terms_6

  data_type: 'smallint'
  is_nullable: 1

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "terms_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "descr30",
  { data_type => "char", is_nullable => 1, size => 30 },
  "disc_pct",
  { data_type => "smallint", is_nullable => 1 },
  "disc_days",
  { data_type => "smallint", is_nullable => 1 },
  "disc_ndays",
  { data_type => "smallint", is_nullable => 1 },
  "disc_mth",
  { data_type => "smallint", is_nullable => 1 },
  "disc_day",
  { data_type => "smallint", is_nullable => 1 },
  "disc_mdays",
  { data_type => "smallint", is_nullable => 1 },
  "term_days_1",
  { data_type => "smallint", is_nullable => 1 },
  "term_days_2",
  { data_type => "smallint", is_nullable => 1 },
  "term_days_3",
  { data_type => "smallint", is_nullable => 1 },
  "term_days_4",
  { data_type => "smallint", is_nullable => 1 },
  "term_days_5",
  { data_type => "smallint", is_nullable => 1 },
  "term_days_6",
  { data_type => "smallint", is_nullable => 1 },
  "payment_age_1",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_2",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_3",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_4",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_5",
  { data_type => "integer", is_nullable => 1 },
  "payment_age_6",
  { data_type => "integer", is_nullable => 1 },
  "flags_6_1",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_2",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_3",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_4",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_5",
  { data_type => "char", is_nullable => 1, size => 1 },
  "flags_6_6",
  { data_type => "char", is_nullable => 1, size => 1 },
  "prox_terms_1",
  { data_type => "smallint", is_nullable => 1 },
  "prox_terms_2",
  { data_type => "smallint", is_nullable => 1 },
  "prox_terms_3",
  { data_type => "smallint", is_nullable => 1 },
  "prox_terms_4",
  { data_type => "smallint", is_nullable => 1 },
  "prox_terms_5",
  { data_type => "smallint", is_nullable => 1 },
  "prox_terms_6",
  { data_type => "smallint", is_nullable => 1 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W4d1XFEyQx8AjqcFnBn76g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
