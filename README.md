


basic usage:

* install brew
* `brew install ansible python3`
* make python3 default
* `ansible-pull -C master -U https://github.com/voidpp/user-env-builder playbook.yaml`

override a var:

`ansible-pull -C master -U https://github.com/voidpp/user-env-builder playbook.yaml -e "git_config.email=santa@deverto.com"`
