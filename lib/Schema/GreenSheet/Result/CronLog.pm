package Schema::GreenSheet::Result::CronLog;

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

Schema::GreenSheet::Result::CronLog

=cut

__PACKAGE__->table("cron_log");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 job

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 spec

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 detail

  data_type: 'text'
  is_nullable: 1

=head2 run_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 object_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "job",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "spec",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "detail",
  { data_type => "text", is_nullable => 1 },
  "run_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "object_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 object

Type: belongs_to

Related object: L<Schema::GreenSheet::Result::Object>

=cut

__PACKAGE__->belongs_to(
  "object",
  "Schema::GreenSheet::Result::Object",
  { id => "object_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:34:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xCdXf16tmEhJAjQ+7rigcQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
