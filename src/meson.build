pkg = import('pkgconfig')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gio-unix-2.0', version: '>= 2.50'),
    dependency('json-glib-1.0')
]

grelier_sources = [
  'Grelier.vala'
]

grelier_lib = library(
        'grelier',
        grelier_sources,
        dependencies: dependencies,
        install: true,
        install_dir: [true, true, true])

grelier_dep = declare_dependency(link_with: grelier_lib,
                             include_directories: include_directories('.'))

pkg.generate(grelier_lib)

executable(
    'grelier', 
    ['Grelier.vala', 'CLI.vala'],
    vala_args: ['--target-glib=2.50'],  
    dependencies: dependencies,
    install: true,
)