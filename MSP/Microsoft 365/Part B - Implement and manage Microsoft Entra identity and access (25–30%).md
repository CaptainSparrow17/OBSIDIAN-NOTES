#### Implement and manage identity synchronization with Microsoft Entra tenant

- Prepare for identity synchronization, including IdFix
    
- Implement and manage directory synchronization by using Microsoft Entra Connect Sync or Microsoft Entra Cloud Sync
    
- Monitor synchronization by using Microsoft Entra Connect Health
    
- Troubleshoot synchronization, including Microsoft Entra Connect Sync and Microsoft Entra Cloud Sync
    

[](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/ms-102#implement-and-manage-authentication)

#### Implement and manage authentication

- Implement and manage authentication methods
    
- Implement and manage self-service password reset (SSPR)
    
- Implement and manage Microsoft Entra Password Protection
    
- Investigate and resolve authentication issues
    

[](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/ms-102#implement-and-manage-secure-access)

#### Implement and manage secure access

- Plan for identity protection
    
- Implement and manage Microsoft Entra ID Protection
    
- Plan Conditional Access policies
    
- Implement and manage Conditional Access policies
    
- Implement and manage multifactor authentication (MFA) by using conditional access policies

SECTIONS 6/7/8 from MS-102 Video Courses::



## Implement and manage identity synchronization with Microsoft Entra tenant

HYBRID ENVIRONMENT::
ALways remember: ENTRA is new Azure AD
![](../../Attachements/Pasted%20image%2020251118103124.png)

### What is Entra Connect SYNC?
![](../../Attachements/Pasted%20image%2020251118103329.png)

You need Entra Connect Sync wizard application to connect on prem and cloud.

You can only sync on PERM to cloud, cloud to ON PERM is not available
Supports staging-stage things

SIGN IN METHODS::
![](../../Attachements/Pasted%20image%2020251118104820.png)

#### Password Hash SYNC
![](../../Attachements/Pasted%20image%2020251118105152.png)

PASS-THrough Authenticatin (PTA)
![](../../Attachements/Pasted%20image%2020251118105326.png)

### Federation
![](../../Attachements/Pasted%20image%2020251118105642.png)

### Enable Single Sign-On options
![](../../Attachements/Pasted%20image%2020251118105628.png)
When logged on in the Domain, will be logged in cloud aswell.

### Entra Cloud SYNC
![](../../Attachements/Pasted%20image%2020251118110528.png)

### Feature Comparison-connect sync vs cloud sync
Remember, You Gonna use only One.
![](../../Attachements/Pasted%20image%2020251118110917.png)

In the context of the Microsoft MS-102 exam (Microsoft 365 Administrator), **writeback** refers to the functionality that allows data changes made in the cloud (Microsoft Entra ID) to be synchronized back to an on-premises Active Directory (AD)

When to use?
![](../../Attachements/Pasted%20image%2020251118115741.png)


#### Drawing out Entra Connect Sync and Entra Cloud Sync

###### ENTRA CONNECT SYNC
We will need a server where we gonna install ENTRA CONNECT SYNC SOFTWARE AGENT which will create connection between on perm ENV and CLoud.
Is Outbound
![](../../Attachements/Pasted%20image%2020251118123918.png)

When using PHS/PTA password hash will be at entra connect sync and a copy is copied to Microsoft online server which  might be compliance issue in some company

Federate can be used in compliance issue company.
	in federate password will only be at domain controller on prem and authentication is made without microsoft having passsword
ADFS server will be there in domain controller in case of ADFS

Firewall ISSSUE IN ADFS - And Complex and expensive
The can be firewall issue so DFS proxy server is added inside DMZ network and At first ENTRA ID communicat with proxy and proxy communicate with ADFS.
ANd if you want redundancy/BAckup, you will need two ADFS server and two ADFS Proxy server which is very very complicated.
![](../../Attachements/Pasted%20image%2020251118125755.png)

Then they came with PTA which is lightweight and easy
Entra ID doesnot know password hashes of users.
![](../../Attachements/Pasted%20image%2020251118130115.png)
In above PTA keep on lookin for new login, keeps on checking, when people login, it checks the password with ADDS and if it is correct, it gives token and tell them your credentials is correct. You are in.

In Entra connect you can add STAGING SERVER, which is mannual steps.
If main server fails, you have to mannually set staging server as main server like below
![](../../Attachements/Pasted%20image%2020251118130326.png)

###### ENTRA CLOUD SYNC
It does not support Device write back
Its very very light
First same process you need to install very very light agent that communicate with Entra ID
Two Min SYNC
	Here in every 2 mins, it gets sync but in entra connect to 2 minute happens
![](../../Attachements/Pasted%20image%2020251118132354.png)


SCIM
System for cross domain identity management
Skim is skim all right that it works with this skim stands for system for Cross-domain Identity management. That establishes that connection. Once you install the intra cloud sync agent on the little machine here, the agent breaks up requests into separate queries based on an object type. So whenever you know if it's a if it's a user object type or a device object type, if you're dealing with, you know, groups, whatever it may be, it has different types of requests that it uses for it.
Uh, and then so what happens if you make a change to something on your domain controller on any one of my domain controllers. Then it's the change gets broken up by scheme, and then that change gets synchronized out to enter ID that's how that's going to work. And it does. It does what's known as a delta sync. Meaning it just it just synchronizes the changes. And then it can also do full syncs, which of course it will do whenever it's, you know, initially setting everything up. So then as far as a user logging on to a machine, they are able to authenticate and then also be authenticated with your enter ID services. All right. And then if you have somebody who is outside they are able to authenticate with intra ID because intra ID will know your password hashes okay. So that is very similar to what we had with the password hash synchronization. Right. It's going to um it's going to be aware of your password hashes. So that's something to think about.

Likewise cloud sync has automatic redundancy, if main server breaks automatic second server acts as main server unlike connect sync.

#### Prepare for identity synchronization, including IdFix
Some attributes that is supported in ON PERM ADDS is not supported on Entra ID.
Example: Space in naming and all.
IdFix: Tools which can be used to run and find if any issue are there before we connect to on perm and Entra ID.
Download from github and run on ADDS server



#### Implement and manage directory synchronization by using Microsoft Entra Connect
We created A User, groups inside new OU and we cona connect the OU insted of whole domain in the cloud.
![](../../Attachements/Pasted%20image%2020251118141237.png)
Likewise, turn off IE Enhanced Security Configuration::
![](../../Attachements/Pasted%20image%2020251118141320.png)

Now go to portal.azure.com and then go to Microsoft Intra ID, then select Microsoft Entra Connect like below::
![](../../Attachements/Pasted%20image%2020251118141541.png)

Go to manage like below:
![](../../Attachements/Pasted%20image%2020251118141737.png)
Then download provisioning Agent like below::
![](../../Attachements/Pasted%20image%2020251118141823.png)
And install it like below::
![](../../Attachements/Pasted%20image%2020251118141856.png)

In below window if you select use express setting it gonna sync whole domain but here we gonna just sync the OU which was created earlier::
![](../../Attachements/Pasted%20image%2020251118142000.png)

Instead select customize::
Then dont tick mark on below and select install.

![](../../Attachements/Pasted%20image%2020251118142125.png)

THEN It gonna ask for sign in method like below:: We selected Password hash sync and Single sign on::
![](../../Attachements/Pasted%20image%2020251118142239.png)

Then it gonna ask username:
![](../../Attachements/Pasted%20image%2020251118142323.png)

Then it will authenticate ask username and password. Provide all.

Once done it gonna ask to confirm forest::
![](../../Attachements/Pasted%20image%2020251118142455.png)

Then select ADD DIRECTORY::
![](../../Attachements/Pasted%20image%2020251118142522.png)

Then select create new AD account: select username and password
This will create an account for joining propose on ON perm.. This account will be on on PERM...
![](../../Attachements/Pasted%20image%2020251118142544.png)
Select next next next
![](../../Attachements/Pasted%20image%2020251118143018.png)
It will ask weather to sync all domain and OU but we gonna select only one OU
![](../../Attachements/Pasted%20image%2020251118143055.png)
Then select below::
![](../../Attachements/Pasted%20image%2020251118143612.png)
Then select next:
Below is saying all users and groups in the above selected AU.
![](../../Attachements/Pasted%20image%2020251118143640.png)

In this section you can select if any mail exchange are there:
![](../../Attachements/Pasted%20image%2020251118143745.png)

![](../../Attachements/Pasted%20image%2020251118144038.png)

will ask for write back::
![](../../Attachements/Pasted%20image%2020251118144110.png)
Do next next next and install::
![](../../Attachements/Pasted%20image%2020251118144209.png)

Now once done if you go to portal.azure.com
You can find those on Perm users and groups
![](../../Attachements/Pasted%20image%2020251118144327.png)

Above same can be done via entra.microsoft.com
![](../../Attachements/Pasted%20image%2020251118144435.png)


Below you can see Entra connect Sync Status

![](../../Attachements/Pasted%20image%2020251118144502.png)

### CLOUD SYNC:: In above AD COnnect sync his physical domain was synced and in this cloud sync demo he is creating new Cloud Vmware ADDS and syncing it..
Virtual on perm ADDS lai cloud ma sync garna lako xa mula le.
You will use either Cloud Sync or connect SYNC.
We gonna create new virtual machine and resource group
![](../../Attachements/Pasted%20image%2020251118212348.png)
Do next  next next create the group set user name and all..
..

DO RDP and connect to the server and open it and set up domain services..
First always turn off IE Enhanced Security Configuration off::
![](../../Attachements/Pasted%20image%2020251118213239.png)


Go to manage and add roles and features and do next next next and install ADDS on the virtual server..
![](../../Attachements/Pasted%20image%2020251118212657.png)

Now we gonna promote this server to the domain controller::
![](../../Attachements/Pasted%20image%2020251118214714.png)
Then do the setting process and all..

