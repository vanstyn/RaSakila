package Schema::Hp3k::Result::DocChecksum;

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

Schema::Hp3k::Result::DocChecksum

=cut

__PACKAGE__->table("doc_checksum");

=head1 ACCESSORS

=head2 refdoc

  data_type: 'char'
  is_nullable: 0
  size: 12

=head2 doc_type

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 md5

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 change_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "refdoc",
  { data_type => "char", is_nullable => 0, size => 12 },
  "doc_type",
  { data_type => "char", is_nullable => 0, size => 2 },
  "md5",
  { data_type => "char", is_nullable => 0, size => 32 },
  "change_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("refdoc");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8Hu9yhZkQDC0/oXAlv5fbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
