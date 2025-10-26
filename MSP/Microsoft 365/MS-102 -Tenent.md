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
Can be created in portal.azure.com or admin.microsoft.com or entra.microsoft.com
Portal.azure.com => microsoft Intra ID
![](../../Attachements/Pasted%20image%2020251026113840.png)
add user

![](../../Attachements/Pasted%20image%2020251026113817.png)
Create new or invite::
![](../../Attachements/Pasted%20image%2020251026113945.png)

Give password or auto generate one..

user type: Guest or Member = guest is guest. member is user of orgn

![](../../Attachements/Pasted%20image%2020251026114257.png)

when creating user in admin.microsoft.com we can assign license..
![](../../Attachements/Pasted%20image%2020251026115854.png)

### Create and manage external users in Microsoft Entra
invite::
![](../../Attachements/Pasted%20image%2020251026120741.png)

email: probably use personal personal email, can be used company email aswell
![](../../Attachements/Pasted%20image%2020251026120917.png)

give all user properties and informationn

Imp: If you wanna add guest in admin.microsoft.com, you gonna get redirected to portal.azure.com


### Create and manage contacts in the Microsoft 365 admin center

![](../../Attachements/Pasted%20image%2020251026121420.png)

Can view contact from outlook::
![](../../Attachements/Pasted%20image%2020251026121525.png)

Adding Multiple contact
![](../../Attachements/Pasted%20image%2020251026121545.png)

###  Concepts of Groups in Azure/Microsoft 365/Entra ID
This all ties to Entra ID.
Weather you are talking about azure, ms365, or any cloud services, entra ID is the directory repo where everything like identity groups users are stored. Entra ID formally called azure AD.

Groups Type::
![](../../Attachements/Pasted%20image%2020251026135435.png)

#### Microsoft 365

![](../../Attachements/Pasted%20image%2020251026141951.png)

The Microsoft 365 group, again, is the most common type of group that we use out there. Uh, it can do almost everything in terms of what you would want out of a group. And what do you want out of a group? Well, one of the main things you want out of a group is to be able to group objects together, and then be able to allow them to have access to various types of resources. Uh, and of course, with Microsoft 365 Group, you can do that. It can be associated with teams and SharePoint and all that. So it's a very, very powerful common type of group that everybody uses. There's one thing that a Microsoft 365 group cannot do. It cannot contain device identities. So you can't put device identities in it. If you want to control devices like a desktop machines, laptop, smartphones, tablets, you can't use a Microsoft 365 group. That is what a security group really brings to the table.

Microsoft 365 group. 
Again this is the most common by far group. 
It used to be called a office 365 group. And then before that in the early days they called it a unified group. So the name has changed a few times. It wouldn't surprise me if they changed the name again in the future. 
But anyway, Microsoft 365 groups. These are collaboration ready groups. They will automatically include a shared mailbox, so anybody in the group can can. If you email the group it goes to the copy of the email can go to out to everybody that's tied to that group. They have a shared calendar. So you can put things on a calendar involving the group and everybody can see it. That's in the groups SharePoint site. You can create a SharePoint site and people that are part of the group get access to that OneNote and planner, all of that links together. It also integrates with Microsoft Teams. So teams is a big part of this as well. So it's used as the backbone for Microsoft team. You anybody that's in it automatically gets access to teams. If they've got a teams license it enables chat with them. They can do meetings and file sharing. 
It also supports guest access so external users can be added to communicate and utilize this group. And it supports what is known as dynamic or assigned, which involves you can manually put people in the group, or you can also handle it automatically using what are called dynamic rules, which towards the end of this little video I'm going to explain that a little bit better. So if you don't really understand the difference between dynamic and assigned, stay tuned okay.

#### Distribution Groups

![](../../Attachements/Pasted%20image%2020251026142124.png)

The second type of group is a distribution group. This goes back to the exchange world where we had distribution lists. This was a group you could create. The group gets an email address and then you can email the group and it goes to every. The email would go to everyone in the group.

The second type of group is a distribution group. So a distribution group has an email only functionality. It's meant to sort of be like a distribution list meaning you create a group. It gets an email address. So for example, if I created a group called marketing, uh, that was a distribution group, it would get an email address like marketing at exam lab practice.com. Anybody that you put in the group, if somebody emails marketing and exam lab practice com the email would go out to everybody in the group. Okay. Keep in mind a Microsoft 365 group can do that as well, but a lot more so distribution groups are kind of an older type of group. They've been around forever. Going back to the exchange you know early days of exchange. Um, back when it was called a distribution list and all that. It's you have what's called manual or dynamic. So sort of the same idea as what you saw with dynamic or assigned. The manual dynamic means you can statically put people in the group, or it can be dynamically controlled based on filters. So it's a little different than this idea of what we have Microsoft 365 dynamic, but it's the same basic concept. You can automate membership of the group. Okay. You have an internal communication primarily intended for internal announcements or department wide emails. Uh, the big thing that you can't do with the distribution group, the key thing to remember here it doesn't have access control to anything. You cannot assign permissions to resources like SharePoint or teams or any of that, so can't be used for that sort of thing.

#### Mail-Enabled Security Groups

![](../../Attachements/Pasted%20image%2020251026142147.png)

That's number three there. And that group also gets an email address but can also be given permissions to resources. But unlike a Microsoft 365 group, doesn't support all of the crazy features that it does, like creating a team and SharePoint and all of that. Again, we're going to dive deeper into that in a moment, just again giving you an overview.

The third type of group we have is a mail enabled security group. So this gives you a dual purpose. You have a security group that gets an email address. Essentially it can contain. It can be given permissions out to resources and all of that good stuff. Okay. So it's email capable. You can you can assign permissions to it. It has a shared email address allowing group members to receive messages like a distribution list. Um access control can be used to manage access to things like SharePoint, OneDrive, Intune, other resources, but no collaboration features. It does not include teams, SharePoint, shared calendar, or document libraries like the Microsoft 365 Group does. So that's the thing to not get mixed up on. You're not going to automatically create a team. It's not going to automatically create a SharePoint site or any of that. It's not going to support any of that collaboration stuff.

#### Security Groups

![](../../Attachements/Pasted%20image%2020251026142238.png)

The last one is a security group. Security groups are strictly used for permissions. They uh the big claim to fame for security group is that they can contain users. But one of the big things that it does is you can put devices in this type of group. So it's great for controlling resources. So if you're using something like Microsoft Intune and you need to control what these devices can do and access and you know, for controlling resources with those devices. Security Group is the greatest way to go about it.

Now the final group we have is called a security group. So security groups it's primarily going to be used to assign permissions to resources like SharePoint sites apps and Intune policies. Uh it has no email functionality. So you can't email a security group. The big claim to fame. The big thing to remember is that with a security group, not only can you contain users, but you can contain devices. And you'll notice I've highlighted that on the screen for you, because that's a very important key point I want you to remember. So it can support users, devices and service principals for flexible management and all that. It also does support dynamic and assigned rules, meaning you can manually add people to the group, or it can be dynamically managed with what are called dynamic rules.



#### Assigned vs Dynamic Groups
![](../../Attachements/Pasted%20image%2020251026142421.png)

And assigned group is more of a traditional style of group. You create the group and then members are manually added or removed by an admin. Okay. Although you can delegate somebody as an owner of the group and they can manually add or remove people as well. So this is best for small teams or fixed memberships. So if you don't have a lot going on this is an easy group to set up. It's very simple to set up and control. Nothing too complex. Okay. Uh, now a dynamic group, the membership is going to be based on rules. So for example, I can create a rule that says every user that has the letters air in their department, uh, property of their user account are automatically a member of this group. So if I created a group called HR, then everyone that has HR as their department property for their user identity, well, they automatically become part of this group. And it's really nice because if a user was to move departments okay, let's say somebody joined the HR department, but then it turned out that they were better with finance than they were HR. And we moved them to the finance department. Uh, well, as soon as you change that department attribute, they would no longer be part of that group. Okay. So users and devices are automatically added removed as attributes change okay. It's ideal for large organizations that need uh, and, you know, have automated management. This is going to be perfect for that. So that is the difference between an assigned group and dynamic group.

#### Create and manage groups, including Microsoft 365 groups and shared mailboxes
