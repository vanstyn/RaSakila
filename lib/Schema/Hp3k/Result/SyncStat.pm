package Schema::Hp3k::Result::SyncStat;

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

Schema::Hp3k::Result::SyncStat

=cut

__PACKAGE__->table("sync_stat");

=head1 ACCESSORS

=head2 table

  accessor: 'column_table'
  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 started

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 in_prog

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 completed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 elapsed

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 success

  data_type: 'tinyint'
  is_nullable: 1

=head2 details

  data_type: 'text'
  is_nullable: 1

=head2 lastlog

  data_type: 'text'
  is_nullable: 1

=head2 last_full_load

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "table",
  {
    accessor => "column_table",
    data_type => "varchar",
    is_nullable => 0,
    size => 64,
  },
  "started",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "in_prog",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "completed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "elapsed",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "success",
  { data_type => "tinyint", is_nullable => 1 },
  "details",
  { data_type => "text", is_nullable => 1 },
  "lastlog",
  { data_type => "text", is_nullable => 1 },
  "last_full_load",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("table");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7zra66ZJKtgVgtN8SeucKg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
