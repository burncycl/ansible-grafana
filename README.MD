## 2018/10 BuRnCycL

Ansible Playbook to Deploy Grafana in a Docker Container, and use Grafana Provisoning system to import InfluxDB Datasource. InfluxDB is configured to use self-signed certificates.

## Prerequisites 
Make sure the remote computer has the proper ansible ssh key in /root/.ssh/authorized_keys

Ubuntu
```
sudo apt-add-repository ppa:ansible/ansible
sudo apt-add-repository universe
sudo apt update
sudo apt install -y git ansible make python
```

## Create secrets.yml

Reference secrets.yml.example

Now create a new file in the root directory for this project called secrets.yml
```
vi secrets.yml
```

Encrypt the secrets file with Ansible Vault
```
ansible-vault encrypt secrets.yml
```

## Modify inventory

Point this at the host you wish to deploy Grafana
```
vi ./inventory
```

## Modify group_vars (if needed).

```
vi ./group_vars/all
```

## Deploying Grafana and provisioning InfluxDB

```
make
```

Or individual stages with:

```
make install
```

```
make configure
```

