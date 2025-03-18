Active Directory (AD) is a directory service developed by Microsoft for Windows domain networks, acting as a central database for managing users, computers, and other network resources, providing centralized authentication and authorization.

Most used Identity management service in the world.

Stores info related to objects. such as Computers, Users, Printers, etc. => Like windows phonebook
Authenticates using Kerberos tickets
	Non-windows devices such as Linux machines, firewalls, etc can also authenticate to AD via RADIUS or LDAP.

Active Directory Components::
![](../../Attachements/Pasted%20image%2020250318132442.png)

Domain Controller: A DC is a server with AD DS Server role installed that has specifically been promoted to a domain controller.
	host a copy of AD DS directory store
	provide authorization and authentication services
	replicate updates to other DC in the domain and forest
	allow admin to manage user account and network resources

AD DS Data Store
contains database files and processes that store and manage directory information for users, services, and applciations
	contains Ntds.dit file
	is stores by default in the %SystemR




https://www.youtube.com/watch?v=4qC7H-y7oKI&ab_channel=JohnSavill%27sTechnicalTraining
Active Directory Domain Services

![](../../Attachements/Pasted%20image%2020250318131648.png)

When we mead AD, we call ADDS.
introduced in 2000 's

Centralized identify manageable

Active Directory Domain Services (AD DS) is **the foundation of every Windows domain network**. It stores information about domain members, including devices and users, verifies their credentials, and defines their access rights. The server running this service is called a domain controller.

ntds.dit = database in AD

need method to store and retrive data
X.500 - STRUCTURE
OU = organizational unit
multiple OU and object can live in OC, i can be in a specific OC but group can be at anywhere
![](../../Attachements/Pasted%20image%2020250316130353.png)

Interaction
LDAP = ACCCESS v3(v2)
light weight directory access protocal



.........................................................................................................................................................................................................
https://www.youtube.com/watch?v=85-bp7XxWDQ&ab_channel=AndyMaloneMVP

users, groups, services

user, computers, groups, devices can be arranged in OU
