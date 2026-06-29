package=qrencode
$(package)_version=3.4.4
$(package)_download_path=https://fukuchi.org/works/qrencode/
$(package)_file_name=qrencode-$(qrencode_version).tar.bz2
$(package)_sha256_hash=e6761653ba6bf3fb8697ee322fac57deb700bcda27e946e7cbfaebf734e93977

define $(package)_set_vars
$(package)_config_opts=--disable-shared -without-tools --disable-sdltest
$(package)_config_opts_linux=--with-pic
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
