use strict;
use warnings;
use Test::More;


use MyWeb::App;
use MyWeb::App::Web;
use MyWeb::App::Web::View;
use MyWeb::App::Web::ViewFunctions;

use MyWeb::App::DB::Schema;
use MyWeb::App::Web::Dispatcher;


pass "All modules can load.";

done_testing;
