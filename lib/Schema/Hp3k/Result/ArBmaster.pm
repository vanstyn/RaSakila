package Schema::Hp3k::Result::ArBmaster;

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

Schema::Hp3k::Result::ArBmaster

=cut

__PACKAGE__->table("AR_BMASTER");

=head1 ACCESSORS

=head2 batch_no

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 date_entered

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 curr_open_amt

  data_type: 'integer'
  is_nullable: 1

=head2 orig_doc_type

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 filler30

  data_type: 'char'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "batch_no",
  { data_type => "char", is_nullable => 1, size => 8 },
  "date_entered",
  { data_type => "char", is_nullable => 1, size => 6 },
  "curr_open_amt",
  { data_type => "integer", is_nullable => 1 },
  "orig_doc_type",
  { data_type => "char", is_nullable => 1, size => 2 },
  "filler30",
  { data_type => "char", is_nullable => 1, size => 30 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wSapF16CWwRHqEZ7ghz8xQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
