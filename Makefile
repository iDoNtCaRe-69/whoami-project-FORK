tool_name=kali-whoami

src_dir=/usr/share
trigger_dir=/usr/bin

install:

	install -m 755 kali-whoami $(trigger_dir)
	mkdir -p $(src_dir)/$(tool_name)/backups
	cp -vr assets $(src_dir)/$(tool_name)


uninstall:

	rm -rf $(trigger_dir)/$(tool_name)
	rm -rf $(src_dir)/$(tool_name)
	rm -rf $(src_dir)/kali-menu


reinstall:

	rm -rf $(trigger_dir)/$(tool_name)
	rm -rf $(src_dir)/$(tool_name)
	install -m 755 kali-whoami $(trigger_dir)
	mkdir -p $(src_dir)/$(tool_name)/backups
	cp -vr assets $(src_dir)/$(tool_name)
