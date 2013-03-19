package Schema::Hp3k::Result::ValidCtlRec;

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

Schema::Hp3k::Result::ValidCtlRec

=cut

__PACKAGE__->table("VALID_CTL_REC");

=head1 ACCESSORS

=head2 valid_key

  data_type: 'char'
  is_nullable: 1
  size: 14

=head2 descr30

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 descr

  data_type: 'char'
  is_nullable: 1
  size: 60

=head2 filler10

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 date_updated

  data_type: 'char'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "valid_key",
  { data_type => "char", is_nullable => 1, size => 14 },
  "descr30",
  { data_type => "char", is_nullable => 1, size => 30 },
  "descr",
  { data_type => "char", is_nullable => 1, size => 60 },
  "filler10",
  { data_type => "char", is_nullable => 1, size => 10 },
  "date_updated",
  { data_type => "char", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PocErj8vfshjNbYofDmz4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
