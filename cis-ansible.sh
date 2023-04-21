#https://galaxy.ansible.com/florianutz/ubuntu2004_cis
sudo apt-get update 
sudo apt install ansible -y
ansible-galaxy install florianutz.ubuntu2004_cis
cat <<EOF > cis-playbook.yaml 
---
- hosts: localhost
  become: yes
  remote_user: root
  gather_facts: yes
  roles:
    - { role: "florianutz.ubuntu2004_cis",}
EOF

ansible-playbook cis-playbook.yaml