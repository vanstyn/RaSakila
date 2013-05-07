package Schema::MixedArticles::Result::Author;

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

Schema::MixedArticles::Result::Author

=cut

__PACKAGE__->table("authors");

=head1 ACCESSORS

=head2 author

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=cut

__PACKAGE__->add_columns(
  "author",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
);
__PACKAGE__->set_primary_key("author");

=head1 RELATIONS

=head2 articles

Type: has_many

Related object: L<Schema::MixedArticles::Result::Article>

=cut

__PACKAGE__->has_many(
  "articles",
  "Schema::MixedArticles::Result::Article",
  { "foreign.author" => "self.author" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-05-06 17:02:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qtiLoLw5kVhqbW66yAfXRQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
