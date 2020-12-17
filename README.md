## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: (Images/diagram_filename.png)#!#!#!#!#!#!#!#!

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select playbooks found in "./ansible/playbook/" may be used to install only certain pieces of it, such as Filebeat.

  - Ansible Playbooks located in: ./ansible/playbook/

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient and responsive to users, in addition to restricting unwanted access to the network.
- A Load Balancer can be a great addition to any network hosting services because it can mask the actual IP's and identities of the servers behind the public IP of the load balancer.  They also help mitigate against small DOS attacks.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- The filebeat module allows the logging to changes of local system files.
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function   | IP Address | Operating System |
|----------|------------|------------|------------------|
| Jump Box |Gateway     | 10.0.0.4   | Linux            |
| Web-1    |WebServer   | 10.0.0.5   | Linux            |
| Web-2    |WebServer   | 10.0.0.5   | Linux            |
| Web-3    |WebServer   | 10.0.0.5   | Linux            |
| Elk      |Kibana-Host | 10.1.0.4   | Linux            |
| Load-Bal |LoadBalancer| 0.0.0.0    | N/A              |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: NOT LISTING MY IP PUBLICALLY!!!!

Machines within the network can only be accessed by Ansible Container from JunmpBox.
- The ELK machine, or Kibana GUI can only be accessed by my IP and computers on my LAN.  I will not list my Public IP.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | MY PUBLIC IP         |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because this ansible-playbook can be used to re-deploy the same working environment in case of any emergencies/disasters.  It also makes new servers on the network simple to setup.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![](Images/docker-ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
  - Web-1: Filebeat, Metricbeat
  - Web-2: Filebeat, Metricbeat
  - Web-3: Filebeat, Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- The playbooks are located in "./ansible/playbook" and it is recommended to copy them to your local machine at "/etc/ansible/playbook"
- You must update your /etc/ansible/hosts to include a new group [elk].  Inside this group you will add the IP of servers you wish to install ELK service on.  Using these groups you can choose which hosts to execute playbooks on, and therefore customize your network setup.
- In order to verify your instance of ELK is functional, visit  "http://[ELK-PUBLIC-IP]:5601/app/kibana" and replace "[ELK-PUBLIC-IP]" with the IP of your host.

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
