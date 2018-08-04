project('cblas', 'd', version : '2.0.3', license: 'BSL-1.0')

cblas_dir = include_directories('source/')

cblas_dep = declare_dependency(
    include_directories: cblas_dir,
)

install_subdir('source/',
    strip_directory : true,
    install_dir: 'include/d/' + meson.project_name(),
)

import('pkgconfig').generate(
    name: meson.project_name() + '-d',
    description: 'CBLAS header for Dlang.',
    subdirs: 'd/' + meson.project_name(),
    version: meson.project_version(),
)
