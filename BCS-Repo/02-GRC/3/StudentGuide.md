## 2.3 Student Guide: Governance Frameworks, Compliance, and BCP/DR

### Overview

In the final class of the GRC unit, we will cover policy, compliance, and business continuity planning / disaster recovery.

### Class Objectives

By the end of this class, you will be able to: 

- Explain how organizations use policy and procedure to formalize standards of "right" and "wrong."

- Use governance frameworks to determine which policies an organization must develop.

- Explain how audits are used to ensure compliance.

- Explain how business continuity planning and disaster recovery ensure business and mission critical functions in the event of a disruption.

### Slideshow

- The class slides are available on Google Drive here: [2.3 Slides](https://docs.google.com/presentation/d/1NljYtqdyTm8uEoAFJDHIf2vB97a2aeYjXTbU30i_HUM/edit#slide=id.g480f0dd0a7_0_1803) 

---

### 01. Welcome and Overview 

Today's class will introduce you to governance, compliance, and business continuity planning and disaster recovery. 

  - **Governance** is concerned with codifying and enforcing proper behavior and operations. Governance is the field in which standards of "right" and "wrong" are established and enorced.

  - **Compliance** is about enforcing the policies necessary to meet those standards.

Knowledge of governance, compliance, and BCP/DR is crucial for all security professionals. Most of what security professionals do is mandated by governance policies and subject to compliance audits.

### 02. Codifying and Enforcing Behavior with Policies and Procedures 

The week began by developing a training plan to improve GeldCorp's security culture. This training plan was meant to protect the organization by changing employee behavior.

- The training exercise defined what employees _should_ do when faced with suspicious links. In other words, it defined the "right" behavior. 

A rule that defines the "right" behavior is called a **policy**. Organizations use policies to define standards for behavior and operations. 

- Each individual policy is just one rule. In practice, organizations will have many policies, and therefore many rules, to support a given goal. 
- For example, a company must have many security policies in place to protect its data.

Guidelines for the kinds of policies an organization should have in place are called **governance frameworks**. Governance frameworks describe which guarantees a company must provide to remain compliant with federal regulations and industry standards.

Today, we'll explore these concepts by:
- Defining formal policies for GeldCorp.
- Assessing what user data collected by GeldCorp is subject to GDPR and PCI.
- Determining whether GeldCorp's data collection practices are GDPR and PCI compliant.


#### Using Organizational Goals to Define Policies

Remember: we developed our training plan by setting a goal and determining the necessary steps to achieve it.

- The training plan prescribed a specific rule that employees should follow. For example: "Do _not_ click links to domains outside of the corporate intranet."

- This rule is an example of a **policy**, which is a course of action proposed by a business. In this case, the rule specifies a download policy.

- The goal of defining and implementing a new download policy was to reduce employee click-through rate to less than five percent. In other words, the business implemented policy as a means of achieving a goal.

Such business goals often drive the development of policies. There are two general categories of business goals:

- **Internal/Volitional**: Targets that the business sets in its own interest. For example, an organization might aim to reduce long-term security expenses to less than $400,000.

- **External/Imposed**: These are targets that the business must hit because they will suffer consequences if they do not. Examples include requiring e-merchants to handle all credit card transactions securely or face legal consequences if they experience a breach of customer PII (personally identifiable information).

#### Internal Objectives and Policies

Consider the following example: Suppose we want to reduce unauthorized root-level login incidents on domain controllers to zero.

- An organization that adopts such a policy would hand it off the IT team, who would be responsible for determining how best to implement it.

- One possible implementation is to require all domain administrators to use strong passwords and force them to create a new password every month.

- A password policy might require that administrators create passwords with:
  - At least 16 characters.
  - At least one letter and one number.
  - At least one special character (`'`, `(`, `]`, etc.).

- Additionally, the password policy could require that passwords do not contain any portion of the administrator's username, and that new, strong passwords are created every month.

This policy defines clear standards of behavior: 
  - Administrators are expected to follow very specific rules when creating passwords, which their computers will enforce. 

  - And, these rules are specifically designed to achieve the goal of reducing the incidence of unauthorized root-level logins on domain controllers to zero.

Consider the below example of a completed password policy:

  ```md
  DATE: 5/17/2017
  AUTHOR: Jane Author

  DOMAIN ADMINISTRATOR PASSWORD POLICY
  This document lays out a password policy for Domain Administrators.

  PURPOSE
  The purpose of implementing a Domain Administrator password policy is to reduce the incidence of unauthorized root-level logins on Domain Controllers.

  The organization has prioritized this objective in the interest of protecting the integrity and confidentiality of data on the corporate intranet.

  POLICY DESCRIPTION
  Domain Administrators will be required to create a new strong password every month. This password MUST NOT include any substring of the Domain Administrator's username.

  In addition, the password must include:
  - At least 16 characters.
  - At least 1 letter and 1 number.
  - At least 1 special character (`'`, `(`, `]`, etc.)

  For example, the following passwords are legal for the user guest:

  - CloGyPTioNEntEDist
  - CloGyPTioNEntEDist
  - n0tparticularly!strong

  The following password is illegal:
  - `gue1st12345678901342`


  ENFORCEMENT
  All workstations on the corporate domain have been configured to force Administrators to adhere to the above password complexity constraints and refresh intervals.

  Non-compliant passwords will be rejected by the operating system.

  MONITORING
  All attempts to log in as a Domain Administrator, both remote and local, will be monitored.
  ```

- This policy still does not guarantee strong passwords:

  For example, `n0tparticularly!strong` is legal, but easy to crack. It is up to policy developers to determine whether a policy is secure enough.

### 03. Activity: Documenting Company Policies

- [Activity File: Documenting Company Policies](./Activities/03_Documenting_Company_Policies/Unsolved/README.md)

### 04. Activity Review: Documenting Company Policies

- [Solution Guide: Documenting Company Policies](./Activities/03_Documenting_Company_Policies/Solved/Readme.md)  

### 05. Using Frameworks to Guide Policy Development
Internal policies often support business goals, such as guaranteeing 99% uptime.

Businesses often have to also follow rules that they don't set for themselves. These rules don't directly benefit the business, but might be mandated by the law or industry standards.

- For example, merchants that process financial transactions are legally required to guarantee that their customers' data remains confidential. If a company suffers a breach that results in the disclosure of customer PII, they may have to pay fines and face legal penalties.

Such rules are often called **governance frameworks**. Frameworks can be either internal (developed by the company) or external (developed by standards bodies or governments). We will focus on the latter, as it is more important for understanding audit and compliance.

#### Securities and Exchange Commission

Governance frameworks codify standards that all businesses should follow. Within the United States, these frameworks originated in statutes adopted by the **Securities and Exchange Commission (SEC)**, the regulatory body in charge of enforcing and proposing laws regarding financial instruments (stocks, bonds, options, etc.), and protecting consumers from fraud.

- In the 1990s, the internet grew explosively, leading to the emergence of cybercrime. During the 90s, the SEC worked with Congress to pass anti-fraud statutes to discourage cybercrime.
  - **Note:** A statute is a law passed by Congress. An anti-fraud statute, in our context, is a law criminalizing the use of technology to commit fraud.

- In 2000, the SEC moved past simple anti-fraud laws by adopting a regulatory statute called **Regulation S-P**. This regulation did not focus entirely on security, but Rule 30 of Regulation S-P mandated that organizations establish written policies and procedures that are designed to: 
  - (a) Insure the security and confidentiality of customer records and information.
  - (b) Protect against any anticipated threats or hazards to the security or integrity of customer records and information.
  - (c) Protect against unauthorized access to or use of customer records or information that could result in substantial harm or inconvenience to any customer.

 **Note:** A regulatory statute is a rule or order issued by an executive-branch department (Governor's or President's Office) or an administrative agency such as the SEC. Though not passed by Congress, regulatory statutes have the force of law, meaning that those who violate them may face criminal penalties.

  - Rule 30 of Regulation S-P is also known as the Safeguards Rule.

Additional regulatory statutes and administrative milestones followed. Some of the more important ones include:
- **Regulation S-AM** (August 2009)

  - Placed limits on when corporations can share consumers' private information for advertising and marketing purposes.

- **Disclosure Guidance** (October 2011)
  - Guidelines for when and how organizations should disclose breaches of cybersecurity. While not formal regulatory statutes with the force of law, these guidelines were an important step towards cyber regulation.

  - When the guidelines were released, the federal government still had no formal regulations around cybersecurity or cyber incidents. However, the disclosure guidance specified that businesses were obligated to disclose cybersecurity breaches under then-current SEC rules if the breach resulted in the disclosure of information that a "reasonable investor would consider important to an investment decision."

  - Read the full guidelines at the following link: 
    - [SEC Disclosure Guidelines](https://www.wilmerhale.com/en/insights/publications/sec-issues-new-guidance-on-disclosing-cybersecurity-risks-and-incidents-october-27-2011)

- **Regulation S-ID** (April 2013)

  - Also known as the Identity Theft Red Flags Rule, Regulation S-ID established "final rules and guidelines to require certain regulated entities to establish programs to address risks of identity theft." This was the first regulation to formally require corporations to protect consumers' non-public information (NPI).

  - Regulation S-ID obligates firms to do two things: protect against identity theft, and verify that requests to change an account holder's registered address indeed come from the account holder themselves:

    -   "First, the rules require financial institutions and creditors to develop and implement a written identity theft prevention program designed to detect, prevent, and mitigate identity theft in connection with certain existing accounts or the opening of new accounts."

    -  "Second, the rules establish special requirements for any credit and debit card issuers that are subject to the Commissions’ respective enforcement authorities, to assess the validity of notifications of changes of address under certain circumstances."

  - The full text of the regulation is available at the following link: 
    - [Regulation S-ID](https://www.govinfo.gov/content/pkg/FR-2013-04-19/pdf/2013-08830.pdf)

- **Cybersecurity Regulation Blueprint** (April 2014)
  - The SEC officially recognized cybersecurity as an exam priority, meaning that they would consider a firm's security posture as a routine part of their evaluations and audit standards. The blueprint provides examples of the kinds of questions the SEC would ask brokerages and asset managers during audits.

While these statues, regulations, and guidelines were developed for financial institutions, they apply to all publicly traded organizations, regardless of industry.

- While these guidelines explain what kinds of protections companies are obligated to provide their customers, they do _not_ specify how they should meet those obligations.

- Since businesses in different industries manage different kinds of data, organizations must meet these obligations in different ways. Therefore, there are different frameworks for different industries.

A business's internal policies often document how they choose to implement these mandates, in addition to private business goals.

There are many industry frameworks. The importance of each framework depends on the specific industry. However, all security professionals must be familiar with the following, at minimum:

- **General Data Protection Regulation (GDPR)** (2016)
  - The GDPR protects the private data of all citizens of the European Union (EU) and European Economic Area (EEA). 
  
  - It requires that organizations that process data belonging to EU citizens protect the data sufficiently. GDPR regulations apply to organizations based in the EU, as well as those based elsewhere that process data belonging to EU citizens.

- **Health Insurance Portability and Accountability Act (HIPAA)**
  - HIPAA is a law that mandates the protection of medical information. HIPAA has five sections, called titles, but "HIPAA compliance" typically refers to abiding by **Title II: HIPAA Administrative Specification**. 
  
  - Title II is the section that establishes privacy standards around electronic access to healthcare data. Organizations must uphold the following standards to remain HIPAA compliant:

    - **National Provider Identifier Standard**: All healthcare entities (people, healthcare providers, health plans, and employers) must have an ID, called the National Provider Identifier (NID).

    - **Transactions and Code Set Standard**: Sets standards for health insurance claims.

    - **HIPAA Privacy Rule**: Sets standards protecting individually identifiable health information, such as prescription information and lab results. This defines _what_ data to protect.

    - **HIPAA Security Rule**: Sets standards for patient data security. This defines _how well_ data should be protected.

    - **HIPAA Enforcement Rule**: Establishes guidelines for investigations of non-compliant providers.

- **Payment Card Industry Data Security Standard (PCI DSS)**
  - Sets security standards for all companies handling credit card transactions.

  - It is an organizational standard and applies to both public and private organizations that accept, transmit, or store credit card data.

  - PCI defines different compliance levels. The higher the level, the more requirements it has. Companies that handle many transactions have a stricter level of compliance.

  - The most important data protected by PCI includes:

    - Cardholder name, expiration date, and 3-digit service code (CVV) 

    - Magnetic strip data

    - PIN numbers

You'll learn more about individual frameworks on the job, but which you need to know depends on your industry.

### 06. Activity: GDPR and PCI Compliance

- [Activity File: GDPR and PCI Compliance](./Activities/06_GDPR_Compliance/Unsolved/README.md)

### 07. Activity Review: GDPR and PCI Compliance

- [Solution Guide: GDPR and PCI Compliance](./Activities/06_GDPR_Compliance/Solved/Readme.md)


### 08. Break

### 09. Compliance and Audit

Businesses must enforce their policies in order to guarantee compliance with legal mandates. An audit is the process of checking how well an organization is following policies.

- Audits are typically conducted to ensure that an organization upholds the statutes required by government frameworks.

To perform an audit, auditors refer to each rule in the framework, and check that the business is following it. If they find that the organization is violating a given mandate, they notify the Compliance and/or Legal and Executive teams in a final report.

- If a business is found to be non-compliant in any way, the organization will typically respond by:

  - Acknowledging that they are aware of the non-compliance.

  - Determining a timeline to remediate the issue.

  - Developing a plan to bring the organization back into compliance.

- Audits are typically performed periodically by third parties, to eliminate conflicts of interest. However, an organization's Compliance and/or Legal team is responsible for ensuring the company is compliant between audits.


### 10. Activity: Audit Procedures

- [Activity File: Audit Procedures](./Activities/10_Audit_Procedures/Unsolved/README.md)

### 11. Activity Review: Audit Procedures

- [Solution Guide: Audit Procedures](./Activities/10_Audit_Procedures/Solved/Readme.md)


### 12. Contingency Planning for Business Continuity and Disaster Recovery

Even with all of the measures put in place by governance and compliance, it's not guaranteed that an organization will not experience a breach. This is why businesses engage in contingency planning to "plan for the worst."

Organizations need to be ready for any disturbances that can lead to interruptions or completely stop their operations.

- We’ve discussed controls as a way to mitigate threats, vulnerabilities, and risks. But organizations also need to think on a larger scale about building an infrastructure that can minimize the impact on critical functions.

- Contingency planning not only takes into account technology and information systems, but also the larger business processes, employees, and facility requirements.

A breach can have one of two results:

  - **Mild/Moderate Breach**: The business has been impacted, but can still handle day-to-day operations at greater cost.

  - **Serious/Catastrophic Breach**: The business has been impacted so severely that it cannot operate. Instead, it must use its resources to _contain_ the incident, _recover_ from the disaster, and eventually _return_ to operation.


Business continuity planning (BCP) and disaster recovery (DR) planning produce contingency plans in case of a disruption or disaster, and ensure that the business can get back on its feet and remain operational.

- Some examples of disruptions or disasters include: cyberattacks, human errors, and environmental disasters, such as earthquakes and fires.

- As it relates to the CIA triad, contingency planning is focused primarily on ensuring the availability of information, including timely and reliable access to it.

It is important to note the differences between BCP and DR:

- Business continuity planning focus on processes and procedures that an organization needs to consider in order to ensure that critical functions continue both during and after a disaster. 
  - Since this takes into consideration business processes, business continuity involves much more comprehensive and thorough planning to ensure an organization’s long-term success.

- Disaster recovery is more focused on the specific steps that a organization needs to take to resume work after a disaster. It is concerned more with the technology and information infrastructure and related complexities.

  - For example, some of the concerns for DR are how information systems and their operations can be moved to another location following an incident, how information is backed up, and the costs associated with equipment replacement.

#### Contingency Planning

Both BCP and DR begin with a contingency planning policy and business impact analysis.

- Refer to this description taken from from the  [NIST Contingency Planning Guide for Federal Information Systems](<https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-34r1.pdf>):

  - Contingency planning considerations and strategies address the impact level of the availability security objective of information systems.

  - Strategies for high-impact information systems should consider high availability and redundancy options in their design. Options may include fully redundant load balanced systems at alternate sites, data mirroring, and offsite database replication.

  - High-availability options are normally expensive to set up, operate, and maintain and should be considered only for those high-impact information systems categorized with a high-availability security objective.

  - Lower-impact information systems may be able to use less expensive contingency options and tolerate longer downtimes for recovery or restoration of data.


Refer to the below information regarding impact levels taken directly from the [NIST Contingency Planning Guide for Federal Information System](<https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-34r1.pdf>):

- If the potential impact is LOW, the loss of confidentiality, integrity, or availability could be expected to have a limited adverse effect on organizational operations, organizational assets, or individuals.

- If the potential impact is MODERATE, the loss of confidentiality, integrity, or availability could be expected to have a serious adverse effect on organizational operations, organizational assets, or individuals.

- If the potential impact is HIGH,  the loss of confidentiality, integrity, or availability could be expected to have a severe or catastrophic adverse effect on organizational operations, organizational assets, or individuals.

Contingency planning should result in a **contingency policy statement**. This establishes the larger organizational framework and responsibilities related to maintaining confidentiality, integrity, and availability of data, and the impact level to those objectives in the event of a disruption.

- Additionally, a policy statement also considers roles and responsibilities of an emergency response team, resource requirements, training requirements such as exercise and testing schedules, and schedules for maintaining the plan.

#### Business Impact Analysis

The first step in BCP and DR planning is to conduct a **business impact analysis (BIA)** and risk assessment. We covered many aspects of risk analysis in the previous class.

- Conducting a BIA is a lengthy process and outside the scope of today's class. Typically, it is a multiphase process that involves gathering and evaluating information, and preparing a report for senior management.

- The goals of BIA include:

  - Identify key processes and functions of the business.
  - Establish a detailed list of requirements for business recovery.
  - Determine what the resource interdependencies are.
  - Determine the impact on daily operations.
  - Develop priorities and classification of business processes and functions.
  - Develop recovery time requirements.
  - Determine financial, operational, and legal impacts of disruption.

The results of the BIA will impact how the DR plan develops. In particular, there are two specific BIA metrics that will impact the disaster recovery plan.

- **Recovery Point Objective (RPO**): The amount of data that a mission/business process data can afford to lose (taking into account the most recent backup of the data) following a disruption or system outage.

  - For example, if your company performs weekly backups, they have determined that they can tolerate and recover from a week’s loss of data.

- **Maximum Tolerable Downtime (MTD)**: The total amount of downtime that a system can be unavailable to users and the business. Within the time span of MTD, there are two other metrics:

  - **Recovery Time Objective (RTO)**: The maximum tolerable amount of time needed to bring all critical systems back online after a disaster.

  - **Work Recovery Time (WRT)**: The remaining time from the MTD after RTO. For example, if the MTD is four days and the RTO is one day, the WRT needed to get everything up and running again is three days. 
    - The longer the MTD, the more costly it is to the business. 
    - Shorter RTOs mean more costs will need to be allotted to recovery efforts.

Disaster recovery plans will vary by organization. Recovery priorities are dependent on the above metrics as well as outage impacts, resource availability, and costs.

One last major consideration for disaster recovery is having alternate sites to house critical data and technology functions. While rare, disasters may require operations be moved to an alternate site. The facility will need to support the operations established in the contingency plan.

- There are three common types of alternate sites: hot sites, cold sites, and warm sites.

  - A hot site is one that is ready to go and running at all time, and and can immediately continue operations. It will have equipment set up with current available data. While costly, hot sites are important to have for mission-critical data.

  - A cold site is a space with very little set up. These are typically not set up until a disaster occurs, and there should be a strategy in place for rapid setup. While the costs of maintaining a cold site are less expensive, these are not ideal for mission-critical data.

  - A warm site is in-between. For example, servers, hardware, software, and other equipment might be set up but not be loaded with the latest data. There should be a plan for getting this data in place.



### 13. Activity: Disaster Recovery Planning for GeldCorp

- [Activity File: Disaster Recovery Planning](./Activities/13_DR_Planning/README.md)


### 14. Local Virtual Machine Set Up

- [Video: Vagrant VM Installation](https://www.youtube.com/watch?v=9p__oadGyo4&feature=youtu.be)

- [Vagrant Machine Set Up](VirtualMachineSetUp/Vagrant-Machine-Setup.md)





---

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.