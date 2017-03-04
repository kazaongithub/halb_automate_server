package Config::ServerConfig;

use Exporter;

our @ISA    = qw (Exporter);
our @EXPORT = qw (
    $ssl_info_hash
    $servers_info_hash
    $server_login_info_hash
    $server_config_dir
);

our $server_config_dir = 'ServerConfigFiles';

# ssl config infomation
our $ssl_info_hash = {
    'ssl_config_name'          => 'ssl',
    'certificate'              => '/etc/cavium/cert.pem',
    'pkey'                     => '/etc/cavium/key.pem',
    'CApath'                   => '/etc/ssl/certs',
    'main_channel_ssl'         => 'yes',
    'back_channel_ssl'         => 'yes',
    'util_channel_ssl'         => 'yes',
    'main_channel_ssl_ciphers' => 'default',
    'back_channel_ssl_ciphers' => 'default',
    'util_channel_ssl_ciphers' => 'default',
};

# Server LoginHSM info
our $server_login_info_hash = {
    'login_info_config_name' => 'loginInfo',
    'username'               => 'app_user',
    'password'               => 'user123',
};

# Server information
our $servers_info_hash = {

    'server_1' => {
        'server_config_name'  => 'server',
        'hostname'            => '10.0.0.1',
        'back_channel_ip'     => '10.0.0.1',
        'main_channel_port'   => 2224,
        'back_channel_port'   => 2228,
        'util_channel_port'   => 2225,
        'pek_path'            => '/etc/cavium/pek.key',
        'workers'             => 1,
        'polling_interval'    => 0,
        'log_level'           => 'INFO',
        'CriticalAlertScript' => '',
        'reconnect_attempts'  => '-1',
        'reconnect_interval'  => 30,
        'zone'                => 1,
        'nodeid'              => 1,
        'sslreneg'            => 1800,
        'PARTITION'           => 'P1',
    },

    'server_2' => {
        'server_config_name'  => 'server',
        'hostname'            => '10.0.0.2',
        'back_channel_ip'     => '10.0.0.2',
        'main_channel_port'   => 2224,
        'back_channel_port'   => 2228,
        'util_channel_port'   => 2225,
        'pek_path'            => '/etc/cavium/pek.key',
        'workers'             => 1,
        'polling_interval'    => 0,
        'log_level'           => 'INFO',
        'CriticalAlertScript' => '',
        'reconnect_attempts'  => '-1',
        'reconnect_interval'  => 30,
        'zone'                => 2,
        'nodeid'              => 2,
        'sslreneg'            => 1800,
        'PARTITION'           => 'P1',
    },

    'server_3' => {
        'server_config_name'  => 'server',
        'hostname'            => '10.0.0.3',
        'back_channel_ip'     => '10.0.0.3',
        'main_channel_port'   => 2224,
        'back_channel_port'   => 2228,
        'util_channel_port'   => 2225,
        'pek_path'            => '/etc/cavium/pek.key',
        'workers'             => 1,
        'polling_interval'    => 0,
        'log_level'           => 'INFO',
        'CriticalAlertScript' => '',
        'reconnect_attempts'  => '-1',
        'reconnect_interval'  => 30,
        'zone'                => 3,
        'nodeid'              => 3,
        'sslreneg'            => 1800,
        'PARTITION'           => 'P1',
    },

    'server_4' => {
        'server_config_name'  => 'server',
        'hostname'            => '10.0.0.4',
        'back_channel_ip'     => '10.0.0.4',
        'main_channel_port'   => 2224,
        'back_channel_port'   => 2228,
        'util_channel_port'   => 2225,
        'pek_path'            => '/etc/cavium/pek.key',
        'workers'             => 1,
        'polling_interval'    => 0,
        'log_level'           => 'INFO',
        'CriticalAlertScript' => '',
        'reconnect_attempts'  => '-1',
        'reconnect_interval'  => 30,
        'zone'                => 2,
        'nodeid'              => 4,
        'sslreneg'            => 1800,
        'PARTITION'           => 'P1',
    },

    'server_5' => {
        'server_config_name'  => 'server',
        'hostname'            => '10.0.0.5',
        'back_channel_ip'     => '10.0.0.5',
        'main_channel_port'   => 2224,
        'back_channel_port'   => 2228,
        'util_channel_port'   => 2225,
        'pek_path'            => '/etc/cavium/pek.key',
        'workers'             => 1,
        'polling_interval'    => 0,
        'log_level'           => 'INFO',
        'CriticalAlertScript' => '',
        'reconnect_attempts'  => '-1',
        'reconnect_interval'  => 30,
        'zone'                => 1,
        'nodeid'              => 5,
        'sslreneg'            => 1800,
        'PARTITION'           => 'P1',
    },

};

1;
