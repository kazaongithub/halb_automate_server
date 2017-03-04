#!/usr/bin/perl 

use strict;
use warnings;
use Data::Dumper;

use Config::ServerConfig;

use api::Class::ServerConfig;

use api::GenericAPIs::ParseConfig;

our $debug_flag = 0;
#
# Method to read server config,
# create a hash with server name and ServerConfig object
#
# Returns hash reference
#
sub create_server_objects
{
    # Stores server name and correspondin object
    my $servers_obj_hash;

    foreach my $server_info (keys %$servers_info_hash) {
        my $Obj = api::Class::ServerConfig->new (%{$servers_info_hash->{$server_info}}, %{$ssl_info_hash}, %{$server_login_info_hash});
        $servers_obj_hash->{$server_info} = $Obj;
    }

    return $servers_obj_hash;
}

sub main()
{
    my $servers_obj_hash = create_server_objects();
    print Dumper $servers_obj_hash if $debug_flag;

    create_server_configs (
        dir         => $server_config_dir,
        server_hash => $servers_obj_hash,
    );
}

main();
