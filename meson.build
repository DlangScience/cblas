project('cblas', 'd', version : '2.1.0', license: 'BSL-1.0')

description = 'CBLAS header'

subprojects = ['mir-core']

sources_list = [
]

required_deps = []

foreach p : subprojects 
    required_deps += dependency(p, fallback : [p, 'this_dep'])
endforeach

directories = ['source']

directories = include_directories(directories)

this_dep = declare_dependency(
    include_directories: directories,
    dependencies: required_deps,
)

install_subdir('source/',
    strip_directory : true,
    install_dir: 'include/d/' + meson.project_name(),
)

cblas_dep = this_dep
