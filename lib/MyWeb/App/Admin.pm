package MyWeb::App::Admin;
use strict;
use warnings;
use utf8;
our $VERSION='0.01';
use 5.008001;
use MyWeb::App::DB::Schema;
use MyWeb::App::DB;

use parent qw/MyWeb::App/;
# Enable project local mode.
__PACKAGE__->make_local_context();

my $schema = MyWeb::App::DB::Schema->instance;

sub db {
    my $c = shift;
    if (!exists $c->{db}) {
        my $conf = $c->config->{DBI}
            or die "Missing configuration about DBI";
        $c->{db} = MyWeb::App::DB->new(
            schema       => $schema,
            connect_info => [@$conf],
            # I suggest to enable following lines if you are using mysql.
            # on_connect_do => [
            #     'SET SESSION sql_mode=STRICT_TRANS_TABLES;',
            # ],
        );
    }
    $c->{db};
}

1;
__END__

=head1 NAME

MyWeb::App::Admin - MyWeb::App::Admin

=head1 DESCRIPTION

This is a main context class for MyWeb::App::Admin

=head1 AUTHOR

MyWeb::App authors.

