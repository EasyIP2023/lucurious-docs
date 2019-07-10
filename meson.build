project(
	'lucurious-docs',
	'c',
	version: '0.0.1',
	license: 'MIT',
	meson_version: '>=0.50.1',
	default_options: [
		'c_std=c11',
		'warning_level=2',
		'werror=true',
	],
)


run_command('file_convert.sh')

install_man('build/lucur.1')
install_man('build/wlu_freeup_vk.3')
install_man('build/wlu_init_vk.3')
install_man('build/wlu_vkall.h.3')
