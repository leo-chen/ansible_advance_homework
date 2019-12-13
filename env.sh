export TOWER_GUID=7022
export OSP_GUID=6a97
export OPENTLC_LOGIN="weijchen-redhat.com"
export OPENTLC_KEY="/root/.ssh/mykey.pem"
#export OPENTLC_PASSWORD=""
export GITHUB_REPO="https://github.com/leo-chen/ansible_advance_homework"
export JQ_REPO_BASE="http://www.opentlc.com/download/ansible_bootcamp"
export REGION="us-east-1"
export RH_MAIL_ID="weijchen@redhat.com"
#ansible-playbook site-setup-workstation.yml -e OSP_GUID=${OSP_GUID} --private-key=/root/.ssh/mykey.pem -u ${OPENTLC_LOGIN}
ansible-playbook site-config-tower.yml -e tower_GUID=${TOWER_GUID} -e osp_GUID=${OSP_GUID} -e opentlc_login=${OPENTLC_LOGIN} -e path_to_opentlc_key=${OPENTLC_KEY} -e param_repo_base=${JQ_REPO_BASE} -e opentlc_password=${OPENTLC_PASSWORD} -e REGION_NAME=${REGION} -e EMAIL=${RH_MAIL_ID} -e github_repo=${GITHUB_REPO}
