package DBIx::Inspector::Column;
use strict;
use warnings;
use utf8;
use Class::Accessor::Lite;
Class::Accessor::Lite->mk_accessors(qw/table/);

sub new {
    my $class = shift;
    my %args = @_ == 1 ? %{ $_[0] } : @_;
    bless {%args}, $class;
}

sub name        { $_[0]->{COLUMN_NAME} }
sub column_name { $_[0]->{COLUMN_NAME} }
sub data_type   { $_[0]->{DATA_TYPE} }
sub type_name   { $_[0]->{TYPE_NAME} }
sub column_size { $_[0]->{COLUMN_SIZE} }
sub nullable    { $_[0]->{NULLABLE} }
sub remarks     { $_[0]->{REMARKS} }
sub column_def  { $_[0]->{COLUMN_DEF} }
sub is_nullable { $_[0]->{IS_NULLABLE} }

1;