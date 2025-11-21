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

Now server is setup with ADDS and you can see below::
![](../../Attachements/Pasted%20image%2020251119120716.png)
The above process is just to simulate real On PERM real ADDS for us to do Intra Cloud Sync.
Now let the steps starts:
Go to portal.azure.com
Then select Microfost Entra ID from right hand side.
Then go to view all and select Microsoft Entra Connect like below::
![](../../Attachements/Pasted%20image%2020251119121123.png)
Like below select and download cloud sync and start the process::
![](../../Attachements/Pasted%20image%2020251119121353.png)

Similarly 2nd step to go there is shown below to the area where we can start cloud sync. ANy site you use will end up in Azure AD which is Entra ID.
2nd::
Go to entra.microsoft.com
Identity -> Show More
And select Hybrid connect and will take to same Place
![](../../Attachements/Pasted%20image%2020251119121546.png)

Now, Download and install the agent. Its very light weight.
Below popo up will come and select next:
![](../../Attachements/Pasted%20image%2020251120073036.png)
select 1st entra cloud sync
![](../../Attachements/Pasted%20image%2020251120073109.png)
It will ask for authenticate and authenticate it.
Once cred is done and authenticate:
It will ask it needs to create gMSA(Group managed service account)
Better use create gSMA
We gonna use admin cred of on perm account::
On pern virtual admin account
![](../../Attachements/Pasted%20image%2020251120073355.png)

DO next next next::
![](../../Attachements/Pasted%20image%2020251120073427.png)
Once done exit it..

Once this is done go to portal.azure.com
show all
microsoft entra connetc
cloud sync
Then below tis opened
![](../../Attachements/Pasted%20image%2020251120073807.png)

Then go to configuration-> new configuration=> AD to microsoft Entra ID Sync like below:
![](../../Attachements/Pasted%20image%2020251120073906.png)
It will auto detect like below:
![](../../Attachements/Pasted%20image%2020251120073940.png)
Select create in above site.
Now below profi;e is opened::
![](../../Attachements/Pasted%20image%2020251120074011.png)
The above will not sync anything, we have to open and sync it ourselves.
Now go to manage-> scoping filter and selects what you wanna sync.
At end you have to review and enable.
![](../../Attachements/Pasted%20image%2020251120074110.png)

Go to the OU which you wanna sync and go to properties and attribute editor and copy distinguished name from there.
![](../../Attachements/Pasted%20image%2020251120074240.png)

Once coping go back to scoping filter and paste like below and save it:
![](../../Attachements/Pasted%20image%2020251120074458.png)

Now go to review and enable
![](../../Attachements/Pasted%20image%2020251120074524.png)
and select enable configuration:

Now everything will be synced.

Thus the users in that particular OU will be synced.


#### Monitor synchronization by using Microsoft Entra Connect Health
![](../../Attachements/Pasted%20image%2020251120075410.png)
Click above shown Health and Analytics:
![](../../Attachements/Pasted%20image%2020251120075512.png)
The above highlighted agent will already be installed, If not installed try again and install it.

For other domain last one can be installed:
![](../../Attachements/Pasted%20image%2020251120075711.png)

For ADFS select 1st one.


TO view go to sync error and services and view it:
![](../../Attachements/Pasted%20image%2020251120075800.png)
Thats how we gonna see if any sync error are there::

#### Troubleshoot synchronization, including Entra Connect Sync and Entra Cloud Sync
Go to health and analytic as above part and from there you can see everything:
![](../../Attachements/Pasted%20image%2020251120080028.png)

If you select in sync services it shows is healthy or not:
![](../../Attachements/Pasted%20image%2020251120080112.png)

IMP=> Other solution is reboot everything

IMP=> another solution is see if services is running on ON PERM ADDS like below:
![](../../Attachements/Pasted%20image%2020251120080239.png)Services like Azure AD Connect Agent must be running:
![](../../Attachements/Pasted%20image%2020251120080306.png)

Microsoft Entra connect health agent must also be running:
![](../../Attachements/Pasted%20image%2020251120080422.png)
Try do restart if needed:
![](../../Attachements/Pasted%20image%2020251120080618.png)


IMP => Event Viewer:
This is microsoft main log
![](../../Attachements/Pasted%20image%2020251120082202.png)

And check the logs
![](../../Attachements/Pasted%20image%2020251120082228.png)

###### For Cloud SYNC Health
portal.azure.com
Microsoft Entra ID
Microsoft Entra CLoud
![](../../Attachements/Pasted%20image%2020251120082318.png)
ANd like in above you can check health:
click on that it will take you to configuration profile and you can check there aswell.
![](../../Attachements/Pasted%20image%2020251120082413.png)
The below Provisioning logs and Audit logs will als tells many things
![](../../Attachements/Pasted%20image%2020251120082517.png)


## Implement and Manage Authentication
![](../../Attachements/Pasted%20image%2020251120082809.png)
### Implement and Manage authentication Methods:
Portal.azure.com
Microsoft Entra ID
Security
![](../../Attachements/Pasted%20image%2020251120083446.png)
security-> Auth Methods::
![](../../Attachements/Pasted%20image%2020251120083536.png)

Select the authentication and configure as required:
![](../../Attachements/Pasted%20image%2020251120083615.png)


### Implement and manage self-service password reset (SSPR)
By default if not turned, Admin need to reset user pasword. Better turn this on.
portal.azure.com
microsoft entra id
manage
paword reset
![](../../Attachements/Pasted%20image%2020251120085052.png)
Then select for either group or for all
![](../../Attachements/Pasted%20image%2020251120085134.png)

Now go to Auth method and selects what required:
![](../../Attachements/Pasted%20image%2020251120085159.png)
You can select questions also:
![](../../Attachements/Pasted%20image%2020251120085224.png)
There is many question which you can add, edit, delete or remove:

##### Password write back for On-perm Integeration
![](../../Attachements/Pasted%20image%2020251120085509.png)
If selected, password write back, both place will be password resseted.

### Implement and manage Microsoft Entra Password Protection
admin.microsoft.com
setting
organisation settings

set passwords to never expire:: hybrid user don't fall here in this section::
Only cloud users fall here
![](../../Attachements/Pasted%20image%2020251120090002.png)
You can uncheck and set password expiry date:
![](../../Attachements/Pasted%20image%2020251120090143.png)

Arko: Yo pani cloud user lai matra ho, sync user lai matlab xaina hai
portal.azure.com
Microsoft entra ID
manage
security
Authentication methods
password protection
![](../../Attachements/Pasted%20image%2020251120090301.png)
lockout threshold=> atempt before lockout
duration=> kati min lock
custom banned passwords=> google ma top 10 thousands password and ban them

Password protection for windows server Active Directory: => yo chai custom pasword ko lagi matra ho, sab setting ADDS lai vanna khojeko hoin.
yo on garyo vani cahi banned password hybrid ra cloud 2tai lai hunxa.
Sirf custom password banned lai vanna khojeko ho hai saila...
![](../../Attachements/Pasted%20image%2020251120090716.png)

MODE::
![](../../Attachements/Pasted%20image%2020251120090905.png)
Audit= kosle use gareko xa matra thaha hunxa banned password, ko ko audit/effect ma parxa
Enforced garyo vani cahi matra lagu hunxa..

### Investigate and resolve authentication issues
portal.azure.com
Microsoft entra ID
manage
security
authentications Methods => shows authetication methods

Monotoring
activity
![](../../Attachements/Pasted%20image%2020251120091322.png)

user and registration details::
![](../../Attachements/Pasted%20image%2020251120091354.png)

Registration and reset events:
![](../../Attachements/Pasted%20image%2020251120091501.png)
Above Shows log of reset event

Bulk operations
![](../../Attachements/Pasted%20image%2020251120091539.png)

Yema main vaneko chai Activity and user registration details hun.. Tya bata idea hunxa...


#### Implement and manage secure access

- Plan for identity protection
    
- Implement and manage Microsoft Entra ID Protection
    
- Plan Conditional Access policies
    
- Implement and manage Conditional Access policies
    
- Implement and manage multifactor authentication (MFA) by using conditional access policies

## Plan for Identity Protection
Used to be called Azure AD protection
![](../../Attachements/Pasted%20image%2020251121071202.png)
Checking weather you are what you are saying you are. The user are chai jo vanera vaneko tehi ho hacker hoina. Password thahapayera login garna lako hoina.
AI - looks when someone is loging are from where, from where they are loging what devices and at what time. AI will monitor all of it.
Can be paired of conditional access policy and if certain signals are generated what to do and what to do..

Entra ID Signals
![](../../Attachements/Pasted%20image%2020251121072039.png)

Types of Risk
![](../../Attachements/Pasted%20image%2020251121072248.png)
Risky Sign in: sinin from india and china within one min difference
Risky user: used to work 9-5, but one day logged in at 1 am
![](../../Attachements/Pasted%20image%2020251121072430.png)
User Risk Detections:
![](../../Attachements/Pasted%20image%2020251121072751.png)

License Requirements:
![](../../Attachements/Pasted%20image%2020251121072814.png)

Required Roles:
![](../../Attachements/Pasted%20image%2020251121072942.png)

#### Implement and manage Microsoft Entra ID Protection
Entra ID P2 will have all features:
portal.azure.com
Microsoft Entra ID
security
Identity protection
![](../../Attachements/Pasted%20image%2020251121073326.png)

We have user risk policy and signin policy:
![](../../Attachements/Pasted%20image%2020251121073500.png)

Sign - in -risk
![](../../Attachements/Pasted%20image%2020251121073523.png)
Like above you can change it to medium or small or high

Access::What to do if flagged is happened? 
Block? Ask Multi factor Authentication..
![](../../Attachements/Pasted%20image%2020251121073710.png)

Same cocept for user risk policy like above:
![](../../Attachements/Pasted%20image%2020251121074646.png)

We can also have conditional Access policy in combined with this::

Multifactor authentication registation policy: better tell all user to use MFA.
![](../../Attachements/Pasted%20image%2020251121074747.png)

In report you can view risky users, words, signins and all
![](../../Attachements/Pasted%20image%2020251121074852.png)

If any aleart you can notify somone or admin like below:
![](../../Attachements/Pasted%20image%2020251121075211.png)

#### COnditional ACCESS
![](../../Attachements/Pasted%20image%2020251121080718.png)


The Dilemma
![](../../Attachements/Pasted%20image%2020251121081000.png)

COmmon SIgnals::
![](../../Attachements/Pasted%20image%2020251121081411.png)


SIgnal Examples::
![](../../Attachements/Pasted%20image%2020251121081727.png)

What to do if SIgnals are Detected::
![](../../Attachements/Pasted%20image%2020251121082120.png)

### Implement and manage Conditional Access policies
portal.azure.com
Microsoft Entra ID
Security
conditional access
![](../../Attachements/Pasted%20image%2020251121082532.png)

Can go to entra.microsoft.com
protection
conditional access => whereever you go, it gonna take get saved in Entra ID( FOrmally called Azure AD)
![](../../Attachements/Pasted%20image%2020251121082659.png)

Other:
intune.microsoft.com
devices
conditional Access:
![](../../Attachements/Pasted%20image%2020251121082751.png)

Where ever you create conditional access policies, it will get linked to conditional access policy.

Lets get back to portal.azure.com
Select create to create a new policy

![](../../Attachements/Pasted%20image%2020251121082904.png)
The below tab will get opened and select user and groups where you wanna implement policy:

![](../../Attachements/Pasted%20image%2020251121083000.png)
Target resource = cloud apps
conditions:: conditions for policy to get affected.
This is tied to ident
