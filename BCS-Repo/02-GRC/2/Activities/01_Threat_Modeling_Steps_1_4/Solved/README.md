## Solution Guide: Threat Modeling, Steps 1-4

By reading the information in the activity file, we’ve completed Step 1 of the OWASP threat modeling process, which is to familiarize yourself with the assessment scope.

Now we'll walk through Steps 2-4 for both the corporate intranet and web application infrastructure.

### Web Application Infrastructure

#### Step 2: Identify Threat Agents

List three threat agents relevant to the web application:

- **Script kiddies** are a risk to any website. They are unsophisticated and don't have a lot of money, so they're fairly harmless, unless there are easily exploitable vulnerabilities in the client-side web application.

- **Organized cybercriminals** might specifically target GeldCorp because they manage money and equity transfers. These attackers are well-motivated and skilled enough to identify and exploit subtle security holes.

- **Insider threats** are worth considering. Recall that all employees in a given department can access all of that department's data. This means that an engineer on the front-end web team would be able to read the code behind the automated trading algorithms, which the company considers top secret. This is a problem, because that engineer can now leak those secrets, even though he didn't need access to them in the first place.


**Step 3: Identify Possible Attacks**

List three attacks that threat agents might attempt against the web application. Explain what the attacker gains from the attack.

- **DDoS**: The trading platform must respond to the market in real time. Taking down the web application through a DDoS attack would have serious impact on the business's reputation. This is most likely to come from script kiddies.

- **Dumping the database**: Attackers might attempt to use SQL injection to dump the database to steal social security numbers. Script kiddies and more sophisticated attackers might both try this attack.

- **Cross-site scripting (XSS)**: With cross site scripting, an attacker can execute malicious code into a vulnerable web page.  Depending on the code,  attackers can execute a number of attacks, including the transmission of sensitive data such as cookies and session information, redirecting the victim to malicious web content, or compromising the victim’s machine.

**Step 4: Identify Exploitable Vulnerabilities**

Identify three possible vulnerabilities in the web application infrastructure, and rank them in order of severity. Explain how each one could be exploited.

- The **app server** is probably vulnerable to XSS vulnerabilities. These can be used to steal user cookies and hijack their sessions.

- The **database** is probably vulnerable to SQL injection. This could be exploited to dump confidential PII.

    - GeldCorp did _not_ state that the database was encrypted. If attackers dump the database, they'll immediately have access to confidential PII in plaintext.

### Corporate Intranet

**Step 2: Identify Threat Agents**

List three threat agents relevant to the intranet.

- Script kiddies

- Organized cyberciminals

- Insider threats


**Step 3: Identify Possible Attacks**

List three potential attacks against the intranet.

- **Phishing**: An attacker might try to gain access to the private intranet by phishing employees.

- **Malware**: Attackers might use malware to infect the intranet. For example, they may infect it with ransomware.

- **Physical attacks**:  Attackers might be able to gain physical access to the building.


**Step 4: Identify Exploitable Vulnerabilities**

Identify three possible vulnerabilities in the intranet, and rank them in order of severity. Explain how each one could be exploited.

- **No content filter**: Employees can download files from any site they want. This makes it much easier for attackers to introduce malware.

- **Poor access control policies**: Every employee in a department should not have access to all of that department's data.

- **Older workstations**: Windows 7/8 machines are more vulnerable than newer versions.

--- 
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
