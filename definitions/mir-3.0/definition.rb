require File.dirname(__FILE__) + "/../.centos/session.rb"

iso = "mir-3.0.48.0-SIGNED.iso"

session =
  CENTOS_SESSION.merge( :boot_cmd_sequence =>
                        [ '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
                        :disk_size => "18432",
                        :memory_size=> '1024',
                        :iso_file => iso,
                        :iso_md5 => "310b6c42c5597fb465b7e0274f60932b",
                        :iso_src => "http://localhost/isos/#{iso}" )

Veewee::Session.declare session
