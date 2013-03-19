package Schema::Hp3k::Result::Remark;

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

Schema::Hp3k::Result::Remark

=cut

__PACKAGE__->table("REMARKS");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 parent

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 refdoc

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 descr

  data_type: 'char'
  is_nullable: 1
  size: 60

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

=head2 item_no

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 date_updated

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 1
  size: 6

=head2 rmk_line

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 doc_id

  data_type: 'varchar'
  default_value: 'default'
  is_foreign_key: 1
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "parent",
  { data_type => "char", is_nullable => 1, size => 20 },
  "refdoc",
  { data_type => "char", is_nullable => 1, size => 12 },
  "descr",
  { data_type => "char", is_nullable => 1, size => 60 },
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
  "item_no",
  { data_type => "char", is_nullable => 1, size => 4 },
  "date_updated",
  { data_type => "char", is_foreign_key => 1, is_nullable => 1, size => 6 },
  "rmk_line",
  { data_type => "char", is_nullable => 1, size => 4 },
  "doc_id",
  {
    data_type => "varchar",
    default_value => "default",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 40,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 doc

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DocLink>

=cut

__PACKAGE__->belongs_to(
  "doc",
  "Schema::Hp3k::Result::DocLink",
  { doc_id => "doc_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 date_updated

Type: belongs_to

Related object: L<Schema::Hp3k::Result::DateLink>

=cut

__PACKAGE__->belongs_to(
  "date_updated",
  "Schema::Hp3k::Result::DateLink",
  { hp_image_date => "date_updated" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-18 14:30:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1avN3gEp/6JQMzec+v8SWQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
