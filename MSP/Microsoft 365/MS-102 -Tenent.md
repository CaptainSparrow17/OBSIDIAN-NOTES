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
```
atishojha@atishojhanepal.onmicrosoft.com
```

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
admin.microsoft.com
![](../../Attachements/Pasted%20image%2020251026143653.png)

admin.micro.com= > did not give options for dynamic griups
![](../../Attachements/Pasted%20image%2020251026143854.png)

public group => anyone can join without apprtoval
private => only owner can manage add remove
![](../../Attachements/Pasted%20image%2020251026144100.png)

thus assigned group finance is created.
![](../../Attachements/Pasted%20image%2020251026144150.png)
It gonna create finance sharepoint
https://atishojhanepal.sharepoint.com/sites/finance
![](../../Attachements/Pasted%20image%2020251026144308.png)


#### Create and manage groups, including Microsoft 365 using the Azure portal
Wherevere you create group it all gonna end up in entra ID.
It really doesn't matter where you create a group, it's all going to end up in intra ID. This all ties back to enter ID, so whether it's created through Azure or through the Microsoft 365 side of things, or through the intra portal or PowerShell or the Azure CLI, which is like the bash way of doing it. It's all still happening in Microsoft intra ID. 
Okay, but let's take a look at how this works inside the Azure portal. So here I am on Portal.azure.com. 
If I click the menu button and go down to Microsoft Intra ID okay I'm going to then click on the groups blade. And this is where I can start working with groups. 

![](../../Attachements/Pasted%20image%2020251026144816.png)

I could click create a new group. And I could see all of my groups by clicking on all groups. But I'm going to click to create a new group. All right. And then so right out of the gate, it's going to ask me what type of group I want to create. And I want you to notice that you can only create two types of groups through the Azure portal. Now, if you do this through the Microsoft 365 portal, you can create four types of groups. But through the Azure portal you can create the two types of groups. And these are actually the two most common types of groups that anyone ever creates. All right. Security and Microsoft 365. 
The other thing that's interesting about doing this through the Azure portal is that you can also do assign or dynamic groups through here. 
Okay. So we'll start with looking at how I could create a Microsoft 365 group first. So I'll select that and then I'll give it a name. This is going to be called the sales Group. And I notice that it can get an email address. It is a Microsoft 365 type of group okay. So it can get an email address and I can have a description for it. 
![](../../Attachements/Pasted%20image%2020251026145109.png)

add query for dynamic group
![](../../Attachements/Pasted%20image%2020251026145515.png)


Security Groups::
New york windows Group => Add all windows device 
set owner
![](../../Attachements/Pasted%20image%2020251026150948.png)


### Manage and monitor Microsoft 365 licenses, including group-based licensing
Go to billing, your product, licenses and groups
and from there we can assign licenses to the groups.
![](../../Attachements/Pasted%20image%2020251026161136.png)
Once assigned to a group, all members will get the licenses..

You gonna see marketplace or purchases from where you can buy the licenses..

USAGES OF LICENSES
Go to show all Reports=>usages and can see all usage things
Can see individual apps, active users, group activity
![](../../Attachements/Pasted%20image%2020251026161737.png)

### Perform bulk user management
We gonna do in portal.azure.com
![](../../Attachements/Pasted%20image%2020251026162106.png)
If we click bulk create, it downloads template.
So using that template we gonna fill everything and then we gonna do bult create..

![](../../Attachements/Pasted%20image%2020251026164150.png)
This is how it is done.

Now lets do from Microsoft365 portal
![](../../Attachements/Pasted%20image%2020251026165309.png)
The above is how it is done.

### Foundational hands on experience with PowerShell
Why do i wanna do with command if i can do it in CLI.
Bcoz powershell is fast and can do automation easily..
The 50 clicks operation in CLI can be done in a single click.

```Power Shell
Get-Service
EXPLANATION: Lists all services on the local computer along with their statuses.

Get-Service w*
EXPLANATION: Lists all services on the local computer starting with w

cls
EXPLANATION: Clear Screen

Start-Service -Name winrm
EXPLANATION: Starts the Windows Remote Management (WinRM) service.

Stop-Service -Name winrm
EXPLANATION: Stops the WinRM service.

Get-Service -ComputerName CLIENT10
EXPLANATION: Retrieves the list of services from a remote computer named CLIENT10.

Enter-PSSession -ComputerName CLIENT10
EXPLANATION: Starts an interactive PowerShell session with the remote computer CLIENT10 using WinRM.

Get-Process
EXPLANATION: Displays a list of all currently running processes on the local machine.

Get-Process -ComputerName CLIENT10,CLIENT11,CLIENT12 | Out-File c:\clientprocesses.txt
EXPLANATION: Gets the running processes from three remote computers and saves the output to a text file.

Get-Command => Gives all commands powershell supports
EXPLANATION: Lists all available cmdlets, functions, workflows, aliases, and external commands.

Get-Command -Verb Get
EXPLANATION: Shows all commands that use the verb "Get" (e.g., Get-Process, Get-Service).

Get-Command -Noun net
EXPLANATION: Shows all commands that use "net" as the noun (e.g., Get-NetIPConfiguration).

Get-Command -Noun net*
EXPLANATION: It shows commands with nouns starting with "net".

Get-Command -Noun *net*
EXPLANATION: It shows commands with nouns "net".

*Get-Command -Noun net
EXPLANATION: Lists commands whose noun ends with "net".

Get-Command -Noun net
EXPLANATION: Lists commands whose noun contains the word "net" anywhere.

Get-Command -Verb Remove -Noun net
EXPLANATION: Displays all commands that use the verb "Remove" and whose noun contains "net".

Get-Help Get-Eventlog
EXPLANATION: Shows help documentation for the Get-EventLog command.

Get-EventLog -LogName Security -Newest 10
EXPLANATION: Retrieves the 10 most recent entries from the Security event log.

Get-EventLog -LogName Security -Newest 10 | Format-List
EXPLANATION: Same as above but formats the output as a list for easier readability.

Get-EventLog -LogName Security -Newest 10 | Format-List | Out-File c:\security_log.txt
EXPLANATION: Formats the 10 most recent Security log entries as a list and saves them to a text file.

$computername = CLIENT10
EXPLANATION: Stores the name "CLIENT10" in the variable $computername.

Get-EventLog -LogName Security -ComputerName CLIENT10 -Newest 10 | Format-List | Out-File c:\security_log.txt
EXPLANATION: Fetches the latest 10 security log entries from CLIENT10, formats as a list, and saves to a file.

$num1 = 1
EXPLANATION: Assigns the value 1 to the variable $num1.

$num2 = 2
EXPLANATION: Assigns the value 2 to the variable $num2.

$num1 + $num2
EXPLANATION: Adds the two variables and returns the result (3).

Get-ExecutionPolicy
EXPLANATION: Displays the current script execution policy for PowerShell.

Set-ExecutionPolicy -ExecutionPolicy Bypass
EXPLANATION: Temporarily disables script execution restrictions, allowing all scripts to run (use with caution).

```

![](../../Attachements/Pasted%20image%2020251026172445.png)


### Concepts of using Microsoft Graph with PowerShell management
Simply put Microsoft Graph is Rest API that can interact with data in microsoft 365 including all apps, windows, users and all other intitities.
What type of data? All data exposed or available.

 
Microsoft Graph provides APIs to allow us to get this type of data in very secure manner.
![](../../Attachements/Pasted%20image%2020251026181632.png)

APIS
![](../../Attachements/Pasted%20image%2020251026181839.png)

![](../../Attachements/Pasted%20image%2020251026191233.png)


Well, Microsoft Graph is meant to be a unified API endpoint for all the various Microsoft 365 and Azure services. So what exactly does that mean? Well, first off, an API is an application programming interface. And the idea of being unified endpoint is having one central repository that allows us to interact with all of these various services. Right. Instead of having to create different tools that have different entry ways into into interacting with these services, we have a central way to do that. So if you're a developer out there, if you're a developer out there and you're developing different tools, whether they're graphical tools, whether they're command line tools, whether they're tools that are going to use AI, it makes sense to have a central way to do all of that to interact with these services. And this is something they didn't have in the past until Microsoft created the idea of graph. 
All right. The the graph API and all of that. And so this is going to be our way for again building allowing developers to build tools. This will include Microsoft developers. This will include third party developers okay. But they can build tools that can interact with graph which in turn can interact with pretty much everything Microsoft intra ID Teams, outlook, OneDrive, Intune, and all the various services out there. So it's a single endpoint. It uses all of the latest and greatest types of internet standards, and this will include OAuth 2.0 and all of that. This is going to support automation reporting. You can it can be integrated with the various applications. This will include third party applications. So there's just a lot of reasons for having something like this out there for developers to use and to make life easier for interacting with everything.

##### So what is the limitations of traditional PowerShell? 
![](../../Attachements/Pasted%20image%2020251026191305.png)

Well, a lot of you may already know PowerShell has been around since about the year 2006, when they first really developed it. Before that, we used command line options based on the DOS standards. Right. And of course, when 2007 came out, Microsoft really started pushing, uh, PowerShell with exchange 2007 and that sort of it sort of took off from there as one of our main ways of interacting with servers and all of that. The limitations, though, of your traditional PowerShell is that it's very service specific. You would have separate modules for exchange for, uh, Azure AD, which of course is now called entry intra ID and SharePoint and all of that. Of course, you know, for for years, the PowerShell also has required its own remote methods for remoting into and managing these services like Microsoft Exchange. It's also not very adapted to cross-platform support. It was geared mostly just towards windows. Okay. Used all the windows standards for remoting into stuff. Right. Um, and then of course it used legacy authentication. So basic authentication of course, that's, you know, deprecated. They're deprecating things these days. Uh, also it was complex to automate these services. All right. With PowerShell, you if you were doing any type of automation across the various services, it could be very difficult because you require different standards to interact with different services. Uh, so this is really where the traditional PowerShell model of, of interacting with things falls apart. And now we need something newer.


##### So why did Microsoft move to graph. 
![](../../Attachements/Pasted%20image%2020251026191820.png)

Well I think that question has pretty much been answered. But let's go over the key points here. Number one we need unification. We need a unified access model that's going to reduce the complexity of everything. And that's kind of where I've been going so far in this video. Right? We need something to unify everything. Uh, we need something that can work across the various operating systems, including windows, Mac OS and Linux. All right. We need something to that's secure, but also future proof. Okay. So that was one of our big problems. The whole future proofing has been a problem with PowerShell since going all the way back to the year 2006, when it came out. What would happen is standards would change and then they have to recreate new commands. Okay. Uh, and it just became it became sort of a nightmare. Uh, I know, for example, a good example would be they created a module to interact with Azure AD back when Entryid was called Azure AD, they had a module of commands that were called the Azure AD commands. Well, then when they got dated, they they changed to a new set of commands called AZ. And then they also came out with a different set of module based commands and PowerShell called the Msol, the Microsoft Online commands. And then they deprecated that. And all of these have gotten deprecated. Deprecated, you know, over the years. I think some of the AZ commands are still available, but the Azure AD commands are deprecated, the Msol are deprecated. And they've that's that's been an ongoing never ending process. So it's important for there to be some type of future proofing involved here. So with Microsoft Graph we're going to support token based auth and conditional access. These are the main standards that we use for interacting with Azure. To begin with Azure Microsoft 365. So the other thing is graph is going to support your latest and greatest developer tools. It's going to support automation. It's going to enable scalability. All right. It's it's geared towards performant data access being able to perform actions and manage and and have a nice scalable system to grow over time versus what we had with traditional PowerShell. All right. 
##### So Powershell's advantage 
![](../../Attachements/Pasted%20image%2020251026192224.png)
So Microsoft Graph PowerShell advantages. You get a single module called ==**Microsoft.graph**== for the many services. So this one interface is one set of a of modules. One module I should say that's that's full of the various commands and tools that are used to interact with the many services that are out there. There's no need for remote sessions. When you use Microsoft Graph, you'll be able to interact directly using, uh, http URL. URL based standards. So you're not having to use, uh, any of the older remote standards that didn't have the security that they needed. You're using the latest and greatest web based standards to interact with these services, so no need for remote sessions. It's more efficient and it's scalable for doing bulk operations, which is one of the main huge advantages of using PowerShell to begin with is to perform bulk operations. Okay, many times people wonder why we even want to run commands to begin with. Well, because you can do a lot a lot of things faster with PowerShell. As I always like to say, you know, you might do something that takes 50 clicks of your mouse to do something. Well, I might be able to do it one little line of text, but imagine if you had to perform the 50 clicks against 50 things out there on the internet or 50 machines or whatever it is. I can run a script that just to say, run this against all 50 of these, the objects or 50 machines or whatever it may be. 

Powershell's advantage has always been to try to to make life easier on bulk operations, but now we can really do that without having to worry about various commands across the different types of modules that we had that that keep getting deprecated. It's ideal for cross service workflows for for your job workflow, having a process for managing all these things. Another thing is continuously updates continuous updates. So it's continuously updated with the Microsoft 365 feature. So as the Microsoft 365 services get updated, so does graph. This makes it where again, you're not constantly having to download new packages and commands get deprecated and all of that. All right. I'm not saying they might not still um, phase out certain commands, but the great thing about it is, is the actual graph API itself is being upgraded, and that's what you're interacting with, as opposed to the various commands that have logic in them that aren't being updated and they're having to be removed and re, you know, phased out and then replaced. All right. So that's going to be, you know, the the advantages of that. All right. 

##### So wrapping things up now you know which should you USE?
![](../../Attachements/Pasted%20image%2020251026192831.png)

So we still have we have Microsoft Graph. But there is still the traditional PowerShell tools. Or some of the commands are still out there. So when should you do one or the other? Well the key here is pretty simple. Use Microsoft Graph for all modern operation and future compatibility. Use additional tools only if there's not a graph based replacement, so you can still use some of those older tools, but I would only do it if for some reason you can't do it through graph. All right. They're pretty much though, trying to replace all the old commands and all that with graph. So if you're interacting with cloud services you want to be using, graph organization should transition to graph based tools for long term support, because that's where Microsoft is going forward that they're going forward with graph full steam ahead on graph. All right. Microsoft is deprecating many of the traditional commandlets in favor of graphs. So that's the key okay. So remember pretty. To put it simply Microsoft Graph is going to be recommended for modern automation and future compatibility. While traditional PowerShell is going to be used only when graph is not available. That's going to be the thing you want to remember. All right, all right. Well, hopefully this has given you an idea of what graph is, why it's important. You know, PowerShell is going to be used to interact with graph. So it's not that you're going to stop using PowerShell. It's just PowerShell is going to use graph a graph module to interact with graph out on the internet, which is going to essentially let you touch all of your Azure and Microsoft 365 services.

#### Setting up for connecting to MS Graph to support cloud services with PowerShell
Application Programming Interface is Microsoft's newer system for being able to interact with all of the various cloud services that we have out there. One of the problems they had in the past is that they would release a set of commands that would allow you to connect into the cloud and manage those cloud services, but then they would get dated. They would essentially get stale because they would change so much about how things would work that the commands no longer worked. So with Microsoft Graph, that's going to be less of a problem because you're interacting with a live instance of all of the commands and everything that's available out there. And ultimately, this should make it where we don't have to update as often. So the first thing we need to know, though, is if we're going to interact with all the cloud services, we're going to use Microsoft Graph.

First open powershell as admin and run below command::
![](../../Attachements/Pasted%20image%2020251026194317.png)
Always set execution policy to bypass.

Now installing Microsoft Graph Command::
```
 Install-Module Microsoft.Graph -Scope CurrentUser -Repository PSGallery -Force
```

![](../../Attachements/Pasted%20image%2020251026201123.png)

The next thing would be how we actually connect to Microsoft Graph.

```
Connect-MgGraph -Scopes "Group.ReadWrite.all", "User.ReadWrite.All"
```

![](../../Attachements/Pasted%20image%2020251026201538.png)
This is how it gonna connect. It will ask for credentials of onmicro account and everything will be created.

#### Create and manage users and groups, as well as bulk management with PowerShell

```
Get-ExecutionPolicy
EXPLANATION: Displays the current PowerShell script execution policy (e.g., Restricted, RemoteSigned, Bypass). This determines what types of scripts are allowed to run.

Set-ExecutionPolicy -ExecutionPolicy Bypass
EXPLANATION: Temporarily sets the script execution policy to Bypass, allowing all scripts to run without prompts or warnings.

Connect-MgGraph -Scopes "Group.ReadWrite.All", "User.ReadWrite.All"
EXPLANATION: Connects to Microsoft Graph with delegated permissions to read/write both users and groups.

Get-MgUser -All
EXPLANATION: Retrieves a list of all user accounts in Microsoft Entra ID (formerly Azure AD).

New-MgUser -AccountEnabled:$true -DisplayName "Justin Blakely" -MailNickname "justinblakely" -UserPrincipalName "justinblakely@examlabpractice.com" -PasswordProfile @{ ForceChangePasswordNextSignIn = $true; Password = "P@ssword123!" }
EXPLANATION: Creates a new Entra ID user with the specified display name, login details, and a temporary password that must be changed at first sign-in.

Remove-MgUser -UserId (Get-MgUser -Filter "userPrincipalName eq 'justinblakely@atishojha.com.np'").Id -Confirm:$false
EXPLANATION: Delete the user name Justin Blakeyly

Create a users.csv file:

DisplayName,MailNickname,UserPrincipalName
Justin Blakely,justinblakely,justinblakely@examlabpractice.com
Sarah Lee,sarahlee,sarah.lee@examlabpractice.com
Robert Kim,robertkim,robert.kim@examlabpractice.com
EXPLANATION: Creates a CSV file with user info to be used in bulk user creation.

$PasswordProfile = @{ Password = "P@ssword123!"; ForceChangePasswordNextSignIn = $true }
EXPLANATION: Defines a password profile for new users, requiring them to change their password at next sign-in.

Import-Csv -Path ".\users.csv" | ForEach-Object { New-MgUser -AccountEnabled:$true -DisplayName $_.DisplayName -MailNickname $_.MailNickname -UserPrincipalName $_.UserPrincipalName -PasswordProfile $PasswordProfile }
EXPLANATION: Reads the users.csv file and creates a new user for each row using the shared password profile.

Import-Csv -Path ".\users.csv" | ForEach-Object { $user = Get-MgUser -Filter "userPrincipalName eq '$($_.UserPrincipalName)'"; if ($user) { Remove-MgUser -UserId $user.Id -Confirm:$false } }
EXPLANATION: Reads the users.csv file and deletes each user listed if they exist, skipping confirmation prompts.

Get-MgSubscribedSku
EXPLANATION: Lists all the license SKUs available in your tenant, including ID and usage data.

Get-MgSubscribedSku | Select-Object SkuPartNumber, SkuId, ConsumedUnits, PrepaidUnits
EXPLANATION: Displays only key fields (SKU name, ID, number used, and number purchased) from the license list.

Set-MgUserLicense -UserId "justinblakely@examlabpractice.com" -AddLicenses @{SkuId = "06ebc4ee-1bb5-47dd-8120-11324bc54e06"} -RemoveLicenses @()
EXPLANATION: Assigns a Microsoft 365 license to the specified user using the license’s SKU ID.

Set-MgUserLicense -UserId "jc@examlabpractice.com" -AddLicenses @{SkuId = "06ebc4ee-1bb5-47dd-8120-11324bc54e06"} -RemoveLicenses @()
EXPLANATION: Same as above, but for a different user (jc@examlabpractice.com).

New-MgGroup -DisplayName "Test Group" -MailEnabled:$true -MailNickname "testgroup" -SecurityEnabled:$false -GroupTypes @("Unified")
EXPLANATION: Creates a Microsoft 365 Group (not a security group) with mail capabilities and Teams/SharePoint integration.

New-MgGroupMemberByRef
EXPLANATION: Adds a member to a group using a reference to the user's object ID (requires more parameters in practice).
```

![](../../Attachements/Pasted%20image%2020251026202135.png)

Got error for Get-MgSubscribedSku
Yeah so the minimum permission/scope you need to call connect with in order just to perform GET is Directory.Read.All the most is Organisation.Read.All if you start modifying things with a SET command then you'd need to connect with at a minimum Directory.ReadWrite.All.

So, you need to call connect-MGGraph like this in order to have the correct permissions for the command you said:

Connect-MGGraph -scopes Directory.Read.All
This commands saved me..

# Section 5: Manage roles and rols groups
## Concepts of roles in Microsoft 365 and Microsoft Entra
![](../../Attachements/Pasted%20image%2020251027112718.png)


Azure Rbac based roles.
![](../../Attachements/Pasted%20image%2020251027113805.png)


## Entra Id Roles (Formally Azure AD)
![](../../Attachements/Pasted%20image%2020251027115538.png)

## Microsoft 365 Roles
![](../../Attachements/Pasted%20image%2020251027115702.png)


## Principle of Least Privilege
![](../../Attachements/Pasted%20image%2020251027115836.png)
You know, you've heard the principle of least privilege. You've heard me say that already. So what exactly is it in a little bit more depth? Well, the principle of least privilege is to give out the least amount of rights, but still provide users the ability to do their job. So whatever tasks somebody needs to perform, okay, if you're again, if you're talking about maybe you have somebody that's managing a VM in Azure, okay. Or maybe you have somebody that's managing exchange in Microsoft 365, you would consider giving out the least amount of rights to let them do their job. You don't want to make them a global admin if they don't need that level of privileges for exchange, I might say, okay, well, your exchange admin for teams, your teams, admin and so on and so forth. Okay, for a VM, I might give ownership to just that one VM. So Microsoft always encourages this principle.


## PIM AND JIT
This junior level admin is not somebody that I'm giving a lot of control over to yet. I don't want them creating users anytime they want, but I do want to give this junior level admin the ability to create users if I'm out of town. So what I could do is for the next two weeks, I can set schedule this to where where with privileged identity management for the next two weeks. If I'm going to be out of town for the next 14 days or whatever, I can give this lower level admin the user administrator role, but only when they need it. And so the user can can actually go through the portal. And if they needed to create some users because maybe the company hired some users, they can then grab that role, they can request it even. And I could even have it where somebody has to approve it before it goes through. But they can request that role and it's on a timer. We can limit how long they get that role. We can even make it where after they've created the user, they no longer have the role. And if they want the role again, they have to request it. So this is the idea of PIM privileged identity management. And it provides JIT just in time administration, meaning you you get access to it when you absolutely need it.

## Summary::
![](../../Attachements/Pasted%20image%2020251027120421.png)

## Implement and manage roles in Microsoft Entra
Go to portal.azure.com
Microsoft Enntra ID
roles and admin like below
![](../../Attachements/Pasted%20image%2020251027121434.png)

Global Administrator => Highest level
Assignment:: Who all are assigned
![](../../Attachements/Pasted%20image%2020251027121730.png)

Roles Setting has all other info which we can edit.
![](../../Attachements/Pasted%20image%2020251027121838.png)

Before assigning roles always check it..

## Manage roles/role groups in MS Defender XDR, MS Purview, and Microsoft 365
admin.microsoft.com
![](../../Attachements/Pasted%20image%2020251027122718.png)
The above roles are same like in portal.azure.com
![](../../Attachements/Pasted%20image%2020251027122854.png)
like this below for all info: below list is long. below is just few parts
![](../../Attachements/Pasted%20image%2020251027122918.png)

The below are role specific to intra ID, Exchange, Intune , Billing and so on
![](../../Attachements/Pasted%20image%2020251027141140.png)

If you ant any role like share point role search like this and you gonna find all roles::
![](../../Attachements/Pasted%20image%2020251104110023.png)
Then in this tab you can add and do all the things you like:
![](../../Attachements/Pasted%20image%2020251104110108.png)


## Defender/security
admin.microsoft.com => go to security, this gonna open new tab
Then go to Permission blade like below:
![](../../Attachements/Pasted%20image%2020251027145652.png)
Shows various role:: specific for XDR, endpoint role and so on and email coloboration role and so on
![](../../Attachements/Pasted%20image%2020251027145752.png)
Now if you click on email colaboration it shows all the role specific to this:
![](../../Attachements/Pasted%20image%2020251104110451.png)

## Ms Perview = complaince side
admin.micro.com
![](../../Attachements/Pasted%20image%2020251027145854.png)

this will opwn 
we can view rule::
![](../../Attachements/Pasted%20image%2020251027150053.png)

If you wanna assign this role to anyone select role and edit and assign roles.

## Concepts of delegation by administrative units
![](../../Attachements/Pasted%20image%2020251027150319.png)


#### Why AU?
![](../../Attachements/Pasted%20image%2020251027150414.png)

#### Common Use Cases
![](../../Attachements/Pasted%20image%2020251027150635.png)

