#!/bin/bash

#!/bin/bash

DIR=$(dirname $0)
ROLES_DIR="${DIR}/roles"

update_role() {
  echo "Update role ${1}"
  test -d ${ROLES_DIR}/${1} && pushd . &>/dev/null && cd ${ROLES_DIR}/${1} && git pull && popd &>/dev/null || git clone ${2} ${ROLES_DIR}/${1}
}

update_role lxd https://github.com/antonu17/ansible-role-lxd.git
update_role juju https://github.com/antonu17/ansible-juju-role.git
