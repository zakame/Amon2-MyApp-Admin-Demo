package MyWeb::App::Admin::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

any '/' => sub {
    my ($c) = shift;
    #$c->render_json([$c->base_dir()]);
    $c->render('index.tx');
};

1;
