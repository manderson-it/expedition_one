# expedition_one

Welcome to my Arctiq expedition!

## Mission Briefing (abbreviated)

### // provisioning
- Leveraging Terraform and/or **Ansible** tooling;
- Automate the deployment of a compute environment

### // deployment
- Automate the deployment of a containerized application
- Demonstrate the functioning application
- Make the process repeatable (tear down, stand up)
- Present your tech in a lunch and learn style

### // bonus
- Deploy a multi-tier application - Think simple LAMP stacks.

## Prerequisites
```YAML
tasks:
  - name: Gather epic equip. Need toque and mittens, eh?
    equip:
      name: "{{ item }}"
      state: present
    loop:
      - toque
      - mittens
      - gloves
      - goggles
      - helmet
      - headlamp
      - socks
      - thermalshirt
      - thermalunderwear
      - snowpants
      - snowjacket
```

![Epic Equipment](pics/epic_equip.jpg)

## Logbook

Some log entries from my journey can be found in *LOGBOOK.md*.

## Initial steps

Before the Ansible Playbooks can be used to deploy to the
Google Cloud follow the steps in the next subsections.

### Create Google Cloud account
Once you have signed up for an account, access the Google
Cloud Console and create a service account and download its
YAML-file.

The YAML-file is used to authenticate against the Google Cloud
Platform (GCP).

### Prepare your environment

This environment requires kubectl to be present on the Ansible master
and an environment variable to manage GCP and
Google Kubernetes Engines (GKE).

These two scripts `scripts/set-environment.sh` and `scripts/get-kubectl.sh`
take care of preparing your environment.
Source the first script with `source scripts/set-environment.sh` and
execute the second script `sudo bash scripts/get-kubectl.sh`.

Furthermore some Ansible modules require specific Python packages.
For Arch Linux these are:
- ansible ( >= 2.6)
- python-requests (Ansible module gcp_compute_instance)
- python-google-auth (Ansible module gcp_compute_instance)
- python-pyaml (Ansible module k8s)
- python-pip
- openshift (Ansible module k8s)

Commands for Arch Linux:
```bash
sudo pacman -Sy ansible python-requests python-google-auth python-pyaml python-pip
sudo pip install openshift -v
```

##