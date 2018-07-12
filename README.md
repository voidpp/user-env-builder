
basic usage:

`ansible-pull -C master -U https://github.com/voidpp/user-env-builder local-devel.yaml`

override a var:

`ansible-pull -C master -U https://github.com/voidpp/user-env-builder local-devel.yaml -e "git_config.email=santa@deverto.com"`
