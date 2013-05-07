package Schema::MixedArticles::Result::Article;

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

Schema::MixedArticles::Result::Article

=cut

__PACKAGE__->table("articles");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 category

  data_type: 'varchar'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 100

=head2 url

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 author

  data_type: 'varchar'
  default_value: (empty string)
  is_foreign_key: 1
  is_nullable: 0
  size: 200

=head2 description

  data_type: 'text'
  is_nullable: 0

=head2 articletext

  data_type: 'longtext'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "category",
  {
    data_type => "varchar",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 100,
  },
  "url",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "author",
  {
    data_type => "varchar",
    default_value => "",
    is_foreign_key => 1,
    is_nullable => 0,
    size => 200,
  },
  "description",
  { data_type => "text", is_nullable => 0 },
  "articletext",
  { data_type => "longtext", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Schema::MixedArticles::Result::Category>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Schema::MixedArticles::Result::Category",
  { category => "category" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 author

Type: belongs_to

Related object: L<Schema::MixedArticles::Result::Author>

=cut

__PACKAGE__->belongs_to(
  "author",
  "Schema::MixedArticles::Result::Author",
  { author => "author" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-06 17:02:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s7ihs5miNoH0Dqti1tkgsA

__PACKAGE__->load_components('+RapidApp::DBIC::Component::TableSpec');
__PACKAGE__->apply_TableSpec;



# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
