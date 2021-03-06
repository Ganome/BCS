*** DUE TO THE INHERRENT DANGER OF PUBLICALLY POSTING MY IP ADDRESS, I WILL REFER TO MY IP IN THIS DOCUMENT AS [MYIP] ***


## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Azure Elk Deployment](Images/Azure-elk-Deployment.png)

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

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file system and system resources.
- The filebeat "Beat" allows the logging of changes to the local system files.
- The metricbeat "Beat" allowsan administrator to keep track of CPU/RAM usage, Network utilization, among others. 

The configuration details of each machine may be found below.

| Name     | Function   | IP Address    | Operating System |
|----------|------------|---------------|------------------|
| Jump-Box |Gateway     | 10.0.0.4      | Linux            |
| Web-1    |WebServer   | 10.0.0.5      | Linux            |
| Web-2    |WebServer   | 10.0.0.5      | Linux            |
| Web-3    |WebServer   | 10.0.0.5      | Linux            |
| Elk      |Kibana-Host | 10.1.0.4      | Linux            |
| Load-Bal |LoadBalancer| 52.143.126.26 | N/A              |

### Access Policies

The only machines on the internal network that are exposed to the public Internet are:
 - Jump-Box `port 22`
 - Load-Balancer `port 80`
 - Elk instance `port 5601`  

All are protected by the Azure Network Security Group `NSG`, allowing only [MYIP] access.

SSH Connections from the internet are only allowed into the Jump-Box machine. Access to this machine is only allowed from [MYIP].

SSH access to Web-1, Web-2, Web-3 and Elk-VM is only allowed from the Ansible instance located within the Jump-Box VM Docker containter.

The ELK machine, or Kibana GUI can only be accessed by [MYIP] and VM's on the Virtual Network's 10.0.0.0/24 and 10.1.0.0/24

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |       Yes           | [MYIP]               |
| Web-1    |       No            | 10.0.0.4             |
| web-2    |       No            | 10.0.0.4             |
| web-3    |       No            | 10.0.0.4             |
| Elk-VM   | SSH-No /  HTTP-Yes  | 10.0.0.4 / [MYIP]    |

*The elk-vm SSH access is restricted to virtual network traffic.  As the Kibana front-end can only be accessed by my public IP.

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because this ansible-playbook can be used to re-deploy the same working environment in case of any emergencies/disasters.  It also makes new servers on the network simple to setup.

The playbook implements the following tasks:
- Elk can be installed in 5 painless steps, starting by downloading and installing Docker.
- Secondly you would want to install python-pip3 and the "pip" docker module.
- You must also increase the size of the vm.max_map_count variable to '262144' #sysctl -w vm.max_map_count=262144
- Install ELK inside a docker container.
- Ensure that docker and ELK start with system boot-up process.


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Successful Elk Deployment](Images/docker-ps.png)
***PLEASE note that ports 5044, 5601, 9200 Have all been forwarded from the container to the host machine***

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.0.0.5
- Web-2 10.0.0.6
- Web-3 10.0.0.8

I have installed the following Beats on these machines:
  - Web-1: Filebeat, Metricbeat
  - Web-2: Filebeat, Metricbeat
  - Web-3: Filebeat, Metricbeat

These Beats allow me to collect the following information from each machine:
- Filebeat monitors the system for local file system changes, While metricbeat logs CPU/RAM utilization. We can use metricbeat logs to ensure our server is never to burdened or over-worked.  This will make sure the end-user has the best experience.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Edit the /etc/asnible/ansible.cfg line remote_user=USERNAME to reflect the remote account being used to execute playbooks.
- Update the /etc/ansible/hosts file to the group(s) we want to install packages on.
- Run the playbook, and navigate to the remote host(s) to check that the installation worked as expected.


- The playbooks are located in "./ansible/playbook" and it is recommended to copy them to your local machine at "/etc/ansible/playbook"
- You must update your /etc/ansible/hosts to include a new group [elk] and [dvwa] for these particular PlayBooks.  Inside these groups you will add the IPs of servers you wish to install services on.  Using these groups you can choose which hosts to execute playbooks on, and therefore customize your network setup.
- In order to verify your instance of ELK is functional, visit  "http://[ELK-PUBLIC-IP]:5601/app/kibana" and replace "[ELK-PUBLIC-IP]" with the IP of your host.

 ***COMING SOON*** Downloadable Script that will deploy all playbooks on any machine.

 To download the ELK playbook specifically; you can run the command "curl -H 'Accept: application/vnd.github.v3.raw' https://raw.githubusercontent.com/Ganome/BCS/main/ansible/playbook/install-elk.yml > /etc/ansible/playbook/install-elk.yml" 
