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

##### ENTRA CONNECT SYNC
We will need a server where we gonna install ENTRA CONNECT SYNC SOFTWARE AGENT which will create connection between on perm ENV and CLoud.
Is Outbound
![](../../Attachements/Pasted%20image%2020251118123918.png)

When using PHS/PTA password hash will be at entra connect sync and a copy is copied to Microsoft online server which  might be compliance issue in some company

Federate can be used in compliance issue company.
	in federate password will only be at domain controller on prem and authentication is made without microsoft having passsword
ADFS server will be there in domain controller in case of ADFS


##### ENTRA CLOUD SYNC
