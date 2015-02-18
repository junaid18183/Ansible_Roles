- hosts: controller-nodes
  roles:
    - role: dbserver
    - role: dbserver_population
    - role: rabbitserver
    - role: keystoneserver
    - role: keystone_population
    - role: novaserver
    - role: nova_init
    - role: neutronserver
    - role: horizon
    - role: cinderserver
	 

- hosts: storage-nodes
  roles:
    - role: glanceserver
    - role: glance_init
    - role: cindervolume

- hosts: compute-nodes
  roles:
    - role: novacompute



- hosts: network-nodes
  roles:
    - role: neutron-agents
    - role: openvswitch
