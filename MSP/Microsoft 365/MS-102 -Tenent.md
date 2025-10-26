**In my experience, the Microsoft Learn modules for MS-102 did a great job covering most of the material needed to pass. However, the Microsoft practice exam wasn’t very reflective of the real exam format. I found MeasureUp’s practice tests much closer in style and difficulty - and even noticed a few similar questions appear on the actual test..**

**The MS-102 is challenging and can be hard to fully grasp what every feature does if you do not have real world experience with them. However, there are plenty of labs and materials available out there for you to practice on! If you work in IT and your company is a Microsoft Partner or you have a Visual Studio Enterprise license, you qualify for a M365 Dev Sandbox tenant with 20 E5 licenses, user data, and a ton of premium services in Entra.**

**https://www.certquestionsbank.com/MS-102-exam.html****

**I haven’t been exactly where you are, but 23 yo me also felt very lost. I have two statements that really helped me fix my perspective.**
1. **No one is coming to save you.**
2. **Nothing changes if nothing changes.**
**. Edit to add: when I was 23 I read the book ‘the subtle art of not giving a fuck’ and I found it very beneficial. (Though some say it’s a terrible book,,) take a peek, take what helps and leave what doesn’t.**


**MS-102 - UDEMY**


**30/08/25**
## **Deploy and manage Domain Controller**
**Manage => Add Roles and Features**
**![](../../Attachements/Pasted%20image%2020250830131123.png)**
**Next => Installation Type** 
**![](../../Attachements/Pasted%20image%2020250830131240.png)**
**Then select Role based installation**
**then select one or multiple servers**
**Then select ADDS like below**
**![](../../Attachements/Pasted%20image%2020250830132132.png)select next next next and select install and let it finish...**
**Now after done click yellow flag like below and select promote this server to domain controller**
**![](../../Attachements/Pasted%20image%2020250830135650.png)**
**Domain name system (DNS) is must like below::**
**![](../../Attachements/Pasted%20image%2020250830135959.png)**
**leave default below::**
**![](../../Attachements/Pasted%20image%2020250830140141.png)**


## **Joining win 11 to domain**
**setting => ethernet => Dns Server Assignment**
**select edit and add DC ip address and save it...**
**![](../../Attachements/Pasted%20image%2020250830155211.png)**

**For easines we gonna disable ipv6 from network setting as well**
**Before joinging make sure pc can ping dc server ip like below:**
**![](../../Attachements/Pasted%20image%2020250830160923.png)**

**Go to setting-> system->about->domain or workgroup**
**![](../../Attachements/Pasted%20image%2020250830161042.png)**
**select change**
**![](../../Attachements/Pasted%20image%2020250830161110.png)**
**fill like below going to change**
**![](../../Attachements/Pasted%20image%2020250830161301.png)**
**and bingo: And then restart pc**

**![](../../Attachements/Pasted%20image%2020250830161514.png)**


# Section 3: Implement and manage a Microsoft 365 tenant
##### **Tenant**
**Your Microsoft 365 tenant is the set of services assigned to your organization. Typically, this tenant is associated with one or more of your public DNS domain names and acts as a central and isolated container for different subscriptions and the licenses within them that you assign to user accounts.**

**A Microsoft 365 tenant is your organization's private and secure virtual space within the Microsoft cloud, analogous to renting an apartment in a large building where you share infrastructure but maintain isolation. This tenant-based model is fundamental to Software as a Service (SaaS) and utilizes multi-tenancy, allowing multiple customers to share underlying resources while ensuring their data and configurations remain strictly separate, identifiable by a unique tenant ID.**

**Imagine living in a large apartment building where each resident has their own apartment completely private and secure yet sharing common utilities like electricity water and elevators A Microsoft 365 tenant works in a very similar way It's your organization's personal space within the Microsoft cloud service The term tenant comes from the concept of renting Just as you rent an apartment to live in a tenant in the cloud represents your organization's virtual space for managing resources and accessing Microsoft 365 services Tenant-based architectures are a fundamental aspect of cloud-based software as a service platforms These architectures enable organizations to subscribe to services rather than owning and maintaining the underlying infrastructure providing scalable environments without the complexity of managing hardware**

**Tenant: A tenant is a dedicated and isolated instance of the Azure Active Directory (Azure AD)/Microsoft Entra ID service that an organization receives when it signs up for a Microsoft cloud service such as Azure, Microsoft 365, or Dynamics 365. Each tenant has its own identity and access management scope, and is distinct and separate from other tenants. A tenant is also associated with a unique tenant ID, which is a globally unique identifier (GUID) that identifies the tenant in Azure AD.**

**Directory: A directory is a container for objects such as users, groups, and applications, and is used to manage access to resources in Azure. A directory is also associated with a unique directory ID, which is a GUID that identifies the directory in Azure AD.**

**Domain: A domain is a name that identifies a group of resources on the internet, such as a website or an email server. In Azure, a domain is used to verify ownership of a custom domain name and to create user names and email addresses for users in a tenant. A domain can be associated with one or more tenants, and each tenant can have multiple domains.**

**The main difference between a tenant and a directory is that a tenant is a dedicated and isolated instance of Azure AD/Entra ID, while a directory is a container for objects such as users, groups, and applications. A tenant can contain one or more directories, and each directory can contain one or more tenants.**

**In summary, a tenant is a dedicated and isolated instance of Azure AD that an organization receives when it signs up for a Microsoft cloud service, while a directory is a container for objects such as users, groups, and applications, and is used to manage access to resources in Azure. A domain is a name that identifies a group of resources on the internet, and is used to verify ownership of a custom domain name and to create user names and email addresses for users in a tenant.**

**![](../../Attachements/Pasted%20image%2020250320161849.png)**


**OCT 14**
**atishojha17@gmail.com**
**Binita1!**
[atishojha@atishojhanepal.onmicrosoft.com](mailto:atishojha@atishojhanepal.onmicrosoft.com)
**Binita1!**
**cancel by 11/14/25**

**They have changed portal.microsoft.com to admin.microsoft.com..**
**And changed Purchased services to Marketplace::**

**Identity => It means Tenant  =>https://portal.azure.com/**
**![](../../Attachements/Pasted%20image%2020251014210157.png)**


**Microsoft Entra ID (formerly [Azure Active Directory](https://www.google.com/search?sca_esv=deb0b5a04aa924a5&sxsrf=AE3TifPCFAZ0nlftnozaTJiHj2egPP_CrA%3A1760473612193&q=Azure+Active+Directory&sa=X&ved=2ahUKEwisy6miw6SQAxUZUkEAHQG4IuIQxccNegQIKRAB&mstk=AUtExfABg36FTEC5853jEYck65etNPDB5palzjh7Fek7whw8Y6Tw_WE4pkhX5amveBpyl_cgxDRO6BqAz4EXtS2ahL7aQ8QHpSHIVKLC0VBWatDtByb0t_6TDZCyXvs-rCfqfUiBEjd2M6TVMb1iZTDb33n_PgoNYeZX2k8lYxmIqu1wEqk&csui=3))**

**When we create azure account or Microsoft 365 account automatically a microsoft tenant is created.**
**We can add multiple tenant and manage user groups and policy.**

### Adding Extra Tennant => got error message
### CUSTOM DOMAINS

Go to admin.micrisift.com => setting => domain
You can go from portal.azure.com and add domains as well...


Adding USER in azure
![](../../Attachements/Pasted%20image%2020251014222502.png)

Adding user in admin.microsoft.com
![](../../Attachements/Pasted%20image%2020251014222917.png)


### Section 3:: Configure org settings, including Security & privacy and Organizational profile

https://admin.microfoft.com
Then go to org setting::

#### Services
![](../../Attachements/Pasted%20image%2020251014223427.png)
Mainly this settings(services) are for whole organization not single user.


#### Security and Privacy
1)Bind data collection::
![](../../Attachements/Pasted%20image%2020251014224209.png)
2)Customer lockbox
![](../../Attachements/Pasted%20image%2020251014224241.png)

3)Password expiration => never expired...**
**Or can be made to change every week.**
**![](../../Attachements/Pasted%20image%2020250619103655.png)**

4)OPtions for self service password reset..**
**![](../../Attachements/Pasted%20image%2020250619103849.png)**

5)previliged
![](../../Attachements/Pasted%20image%2020251014224603.png)

AND SO ONNN
#### Organizational Profile::
Customize organisation profiles/names/themes
**![](../../Attachements/Pasted%20image%2020250619103937.png)**

**To get email if anything is wrong::**
**![](../../Attachements/Pasted%20image%2020250619104703.png)**

**Reports and usages::=> Gives details on who and how many users are using the services..**

**![](../../Attachements/Pasted%20image%2020250619105023.png)**


**portal.azure.com**

**When creating new users select the usage location appropriately:: =>IMP**

**When creating new user we can do via portal.azure.com and portal.microsoft.com (office way)...**

### Monitor the health of Microsoft 365 services by using Service Health
In admin.micro.com
![](../../Attachements/Pasted%20image%2020251015094605.png)
![](../../Attachements/Pasted%20image%2020251015094627.png)
Will shows all current issue microsoft has, scope of impact, root cause.
There they have report an issue option to report an issue and its impact on our company and so on..

### Configure and review Network connectivity insights
![](../../Attachements/Pasted%20image%2020251015095025.png)
The gist is if you wanna track insights for the various branch offices of a company you would need to create a location profile for it to be able to do that.


### Configure and monitor software updates by using the Microsoft 365 admin center
if user are using 365 app, we have to update them regularly for security reasons...
![](../../Attachements/Pasted%20image%2020251015100551.png)
Shows devices as well when joined to cloud
![](../../Attachements/Pasted%20image%2020251015100650.png)

Shows windows update aswell::
![](../../Attachements/Pasted%20image%2020251015100715.png)


Log Analytic workspace: data storage for analysis, can use for software update
go to portal.azure.com
search: log analytics workspace
and create it..
![](../../Attachements/Pasted%20image%2020251015100943.png)
And create it in portal.azure.com

Now to to admin centre->health->software update
now it will show windows update log
![](../../Attachements/Pasted%20image%2020251015101051.png)
Thus it gonna collect data and help us in update

###### Another advance and good approach is from intune to update the windows and devices..
if you go to intune.micro.com=> intune is mdm(mobile device management)
then devices
and then windows update
from there we can easlilyy update windows devices

From software update section we can do is gather reporting data and to gather data we don't need the intune also.
we can gather all info on apps and windows update and do update..
Christopher Didn't go deep in course

### Monitor Microsoft 365 adoption and usage
stattistics of how many users utilized the clouds services and apps..
![](../../Attachements/Pasted%20image%2020251015104316.png)
will be low when starting out::
it wont provide individual but provide overall data and score.

If you go to Action, then it will show what you can do to improve the score::
![](../../Attachements/Pasted%20image%2020251015105334.png)

There is usages as well:
![](../../Attachements/Pasted%20image%2020251015105504.png)
This will show everything and all the usage data
![](../../Attachements/Pasted%20image%2020251015105528.png)

### Configure and manage Microsoft 365 Backup
Backup storage platform and helps in backing up data and fast storation..
![](../../Attachements/Pasted%20image%2020251015110419.png)
We need to have payasyou go account to do backup and use this features::
Thus we need to go to setup and create pay as you go account..
![](../../Attachements/Pasted%20image%2020251015110649.png)
You need to have azure subscription and have resource groups::

Resource group is a container and all azure resources needs to be stored in container.
Can create resource group from portal.azure.com
Like earlier we create resource group for windows update and all, for this also we need to create separate resource group.
below is the wxample of pay as you go
![](../../Attachements/Pasted%20image%2020251015112333.png)

Below is turning on backup
![](../../Attachements/Pasted%20image%2020251015112414.png)

For backup we need to setup policies aswell.
![](../../Attachements/Pasted%20image%2020251015112451.png)
Below for backup sharepoint
![](../../Attachements/Pasted%20image%2020251015112533.png)
need to do individually for sharepoint, onedrive and so on..

To restore go on Restoration like below::
![](../../Attachements/Pasted%20image%2020251015112900.png)

Don't forget to turn of back up on pay as you go::


# Manage users and groups

Identities - User account/ computer account. Identity is the newer terminology to refer this objects.
"identities" refers to user accounts and their management, including cloud identities, synchronized identities, and federated identities.
Entra ID (formerly Azure AD), identities are classified as either human (users like employees and customers) or machine (workloads and devices), and can be internal (e.g., employees) or external (e.g., partners, applications). These identities are used for authentication and authorization to access resources, and Entra ID provides features like user roles, password protection, and single sign-on (SSO) to manage and secure access.
#Entra ID - Formally Azure AD is the central directory services store
Identities can be synced with your on premise Active Directory (ADDS)

![](../../Attachements/Identities+in+Microsoft+Entra+ID.pdf)
### The multiple ways to Manage Identities
can manages same thing from multiple portal but some will work on one portal only
licenses - only from admin
![](../../Attachements/Pasted%20image%2020251026104202.png)

Common Identities::
User Identities::
![](../../Attachements/Pasted%20image%2020251026110659.png)

Service Principles::
![](../../Attachements/Pasted%20image%2020251026110727.png)

Managed Identities

![](../../Attachements/Pasted%20image%2020251026110743.png)

with service principles user need to manage credentials, key, api and all but with managed identities azure will do everything. But service principles can be used for external services but managed principles is for azure services..


Device Identities: called computer account back in days not we use alot devices laptop, mac, android, tablet, and so on.
![](../../Attachements/Pasted%20image%2020251026112350.png)

### Creating Users
Portal.azure.com => 