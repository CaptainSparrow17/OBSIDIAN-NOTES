**In my experience, the Microsoft Learn modules for MS-102 did a great job covering most of the material needed to pass. However, the Microsoft practice exam wasn’t very reflective of the real exam format. I found MeasureUp’s practice tests much closer in style and difficulty - and even noticed a few similar questions appear on the actual test..**

**The MS-102 is challenging and can be hard to fully grasp what every feature does if you do not have real world experience with them. However, there are plenty of labs and materials available out there for you to practice on! If you work in IT and your company is a Microsoft Partner or you have a Visual Studio Enterprise license, you qualify for a M365 Dev Sandbox tenant with 20 E5 licenses, user data, and a ton of premium services in Entra.**

**https://www.certquestionsbank.com/MS-102-exam.html**

**I haven’t been exactly where you are, but 23 yo me also felt very lost. I have two statements that really helped me fix my perspective.**
1. **No one is coming to save you.**
2. **Nothing changes if nothing changes.**
**. Edit to add: when I was 23 I read the book ‘the subtle art of not giving a fuck’ and I found it very beneficial. (Though some say it’s a terrible book,,) take a peek, take what helps and leave what doesn’t.**


**MS-102 - UDEMY**
https://portal.microsoft.com

1)Password expiration => never expired...
Or can be made to change every week.
![](../../Attachements/Pasted%20image%2020250619103655.png)

2)OPtions for self service password reset..
![](../../Attachements/Pasted%20image%2020250619103849.png)

Organizational Profile::
![](../../Attachements/Pasted%20image%2020250619103937.png)

To get email if anything is wrong::
![](../../Attachements/Pasted%20image%2020250619104703.png)

Reports and usages::=> Gives details on who and how many users are using the services..

![](../../Attachements/Pasted%20image%2020250619105023.png)


portal.azure.com

When creating new users select the usage location appropriately:: =>IMP

When creating new user we can do via portal.azure.com and portal.microsoft.com (office way)...


30/08/25
## Deploy and manage Domain Controller
Manage => Add Roles and Features
![](../../Attachements/Pasted%20image%2020250830131123.png)
Next => Installation Type 
![](../../Attachements/Pasted%20image%2020250830131240.png)
Then select Role based installation
then select one or multiple servers
Then select ADDS like below
![](../../Attachements/Pasted%20image%2020250830132132.png)select next next next and select install and let it finish...
Now after done click yellow flag like below and select promote this server to domain controller
![](../../Attachements/Pasted%20image%2020250830135650.png)
Domain name system (DNS) is must like below::
![](../../Attachements/Pasted%20image%2020250830135959.png)
leave default below::
![](../../Attachements/Pasted%20image%2020250830140141.png)


## Joining win 11 to domain
setting => ethernet => Dns Server Assignment
select edit and add DC ip address and save it...
![](../../Attachements/Pasted%20image%2020250830155211.png)

For easines we gonna disable ipv6 from network setting as well
Before joinging make sure pc can ping dc server ip like below:
![](../../Attachements/Pasted%20image%2020250830160923.png)

Go to setting-> system->about->domain or workgroup
![](../../Attachements/Pasted%20image%2020250830161042.png)
select change
![](../../Attachements/Pasted%20image%2020250830161110.png)
fill like below going to change
![](../../Attachements/Pasted%20image%2020250830161301.png)
and bingo: And then restart pc

![](../../Attachements/Pasted%20image%2020250830161514.png)


# Create a Tenant => JOhn Chrispopher
##### Tenant
Your Microsoft 365 tenant is **the set of services assigned to your organization**. Typically, this tenant is associated with one or more of your public DNS domain names and acts as a central and isolated container for different subscriptions and the licenses within them that you assign to user accounts.

A Microsoft 365 tenant is your organization's **private and secure virtual space** within the Microsoft cloud, analogous to renting an apartment in a large building where you share infrastructure but maintain isolation. This tenant-based model is fundamental to **Software as a Service (SaaS)** and utilizes **multi-tenancy**, allowing multiple customers to share underlying resources while ensuring their data and configurations remain strictly separate, identifiable by a unique **tenant ID**.

Imagine living in a large apartment building where each resident has their own apartment completely private and secure yet sharing common utilities like electricity water and elevators A Microsoft 365 tenant works in a very similar way It's your organization's personal space within the Microsoft cloud service The term tenant comes from the concept of renting Just as you rent an apartment to live in a tenant in the cloud represents your organization's virtual space for managing resources and accessing Microsoft 365 services Tenant-based architectures are a fundamental aspect of cloud-based software as a service platforms These architectures enable organizations to subscribe to services rather than owning and maintaining the underlying infrastructure providing scalable environments without the complexity of managing hardware

**Tenant**: A tenant is a dedicated and isolated instance of the Azure Active Directory (Azure AD)/Microsoft Entra ID service that an organization receives when it signs up for a Microsoft cloud service such as Azure, Microsoft 365, or Dynamics 365. Each tenant has its own identity and access management scope, and is distinct and separate from other tenants. A tenant is also associated with a **unique tenant ID**, which is a globally unique identifier (GUID) that identifies the tenant in Azure AD.

**Directory**: A directory is a container for objects such as users, groups, and applications, and is used to manage access to resources in Azure. A directory is also associated with a unique directory ID, which is a GUID that identifies the directory in Azure AD.

**Domain**: A domain is a name that identifies a group of resources on the internet, such as a website or an email server. In Azure, a domain is used to verify ownership of a custom domain name and to create user names and email addresses for users in a tenant. A domain can be associated with one or more tenants, and each tenant can have multiple domains.

The main difference between a tenant and a directory is that a tenant is a dedicated and isolated instance of Azure AD/Entra ID, while a directory is a container for objects such as users, groups, and applications. A tenant can contain one or more directories, and each directory can contain one or more tenants.

In summary, a tenant is a dedicated and isolated instance of Azure AD that an organization receives when it signs up for a Microsoft cloud service, while a directory is a container for objects such as users, groups, and applications, and is used to manage access to resources in Azure. A domain is a name that identifies a group of resources on the internet, and is used to verify ownership of a custom domain name and to create user names and email addresses for users in a tenant.

![](../../Attachements/Pasted%20image%2020250320161849.png)


OCT 14
atishojha17@gmail.com
Binita1!
atishojhanepal.onmicrosoft.com
Binita1!
cancel by 11/14/25

They have changed portal.microsoft.com to admin.microsoft.com..
And changed Purchased services to Marketplace::

Identity => It means Tenant 
![](../../Attachements/Pasted%20image%2020251014210157.png)


Microsoft Entra ID (formerly [Azure Active Directory](https://www.google.com/search?sca_esv=deb0b5a04aa924a5&sxsrf=AE3TifPCFAZ0nlftnozaTJiHj2egPP_CrA%3A1760473612193&q=Azure+Active+Directory&sa=X&ved=2ahUKEwisy6miw6SQAxUZUkEAHQG4IuIQxccNegQIKRAB&mstk=AUtExfABg36FTEC5853jEYck65etNPDB5palzjh7Fek7whw8Y6Tw_WE4pkhX5amveBpyl_cgxDRO6BqAz4EXtS2ahL7aQ8QHpSHIVKLC0VBWatDtByb0t_6TDZCyXvs-rCfqfUiBEjd2M6TVMb1iZTDb33n_PgoNYeZX2k8lYxmIqu1wEqk&csui=3))

When we create azure account or Microsoft 365 account we 