
Pathscan and CA appliance
-------------------------

ID  | Area    |  Description                          | Assigned  |  Status   | Severity      |Deadline       | Dependencies  | Notes
----|---------|---------------------------------------|-----------|-----------|---------------|---------------|--------------------
1   | NT 3.1  | iDRAC configuration on both servers   | SA        | PENDING   |               | May 31, 2019  |               | During deployment product. 
2   | NT.3.2  | Test iDRAC                            | EY        | PENDING   |               | June 15, 2019  | NT 3.1        | Test access to the console

Security Baseline
-----------------
ID  | Area    |  Description                          | Assigned  |  Status   | Severity      | Deadline      | Dependencies  | Notes
----|---------|---------------------------------------|-----------|-----------|---------------|---------------|---------------|----
3   | SB.3.1  | Enable AD authentication              | SA        | CLOSE     | Medium        | May 15, 2019  |               | Team on training
4   | SB.3.1  | Radius two-factor auth admin and ops  | SA        | PENDING   | High          | June 15, 2019 | NT 3.1        | May be waved
5   | SB.3.2  | Restrict access subnet                | SA        | CLOSE     | High          | June 15, 2019 | NT 3.1        |
6   | SB.3.1  | Add CSG to allow user access          | SA        | PENDING   |               |               |               | Adding access to CSG users
7   | SB.3.3  | Restrict local account "root" access  | EY        | CLOSE     |               |               |               | Enable during hand-over session. One local account for administrators
8   | SB.4.1    | Session timeout                     | EY        | CLOSE     |               |               |               |
9   | SB.9.1    | Provide the IP address              | SA        | PENDING   | May 31, 2019  |               |               | SIEM and iDRAC IP addresses

Pathscan Issues
---------------
ID    | Area  |  Description                          | Assigned  |  Status   |  Severity     | Deadline      | Dependencies  | Notes
------|-------|---------------------------------------|-----------|-----------|---------------|---------------|---------------|----
10    | PS.1  | Flowsplit service hanging             | EY/US     | CLOSE     |  High         | April 30, 2019  |               | Week 18: Applied a fix for docker compose.
11    | PS.2  | Pathscan service hanging              | EY/US     | CLOSE     |  High         | April 30, 2019|               | Week 18: Applied a fix for docker compose.
12    | PS.3  | Detection UI shows repeated alerts    | EY/US     | PENDING   |  Medium       | May 31, 2019  |               |
13    | PS.4  | Detection UI Freezes                  | EY/US     | CLOSE     |  High         | May 31, 2019  |               | Week 18: Change number of processor to 10 for both api and ui.     
14    | PS.5  | Management Administrator UI           |           | PENDING   |  Low          | Not defined   |               | Feature request to simplify the management and configuration of the system   


Credential Analytics Deployment
-------------------------------
ID    | Area  |  Description                          | Assigned  |  Status   |  Severity     | Deadline      | Dependencies  | Notes
------|-------|---------------------------------------|-----------|-----------|---------------|---------------|---------------|----
15    | CA.1  | EY/US to provide access               | EY/US     | Completed |  High         | April 30, 2019  |               | Week 18:             
16    | CA.2  | CA Installed in staging               | EY/AW     | Completed |  High         | May 31, 2019  |   CA.1        | Week 18:
17    | CA.3  | S. Aramco custom reader               | EY/US     | Completed |  High         | May 31, 2019  |               |
18    | CA.4  | Sanitized log test file               | SA        | PENDING   |  High         | May 31, 2019  |               | Week 20                
19    | CA.5  | CA test in staging                    | EY        | PENDING   |  High         | May 31, 2019  |   CA.2, CA.3  | Week 20                
20    | CA.6  | S. Aramco Engineering Package         | SA        | PENDING   |  High         | May 31, 2019  |   CA.4        | Week 20

Documentation and training
--------------------------
ID    | Area  |  Description                          | Assigned  |  Status   |  Severity     | Deadline      | Dependencies  | Notes
------|-------|---------------------------------------|-----------|-----------|---------------|---------------|---------------|----
21    | DO.1  | Low Level Design Pathscan             | EY        | CLOSE     |  High         |               |               | Shared with Aramco team            
22    | DO.2  | Low Level Design Credential Analytics | EY        | Ongoing   |  High         | June 15, 2019  |   CA.5        |
23    | DO.2  | User Documentation                    | EY        | PENDING   |  High         |               |   CA.5        |
24    | DO.3  | Training Materials                    | EY/US     | PENDING   |  High         | May 31, 2019  |               |
25    | TR.4  | Training Pathscan                     | EY/US     | PENDING   |  High         | June 15, 2019 |  DO.2 DO.3    |                 
26    | TR.5  | Training Credential Analytics         | EY/US     | PENDING   |  High         | June 15, 2019 |  DO.2 DO.3    |
27    | D0.4  | Operations Procedure                  | EY        | PENDING   |  High         | June 15, 2019 |  DO.2 DO.3    |

Operations
----------
ID    | Area  |  Description                          | Assigned  |  Status   |  Severity     | Deadline      | Dependencies  | Notes
------|-------|---------------------------------------|-----------|-----------|---------------|---------------|---------------|----
21    | DO.1  | Integration with Operations           | EY        |           |  Medium       |               |               |


- EY/US - US and Australian team
- EY
- SA - Saudi Aramco CSG Team

* *SBL* - Security Baseline
* *NT*- Network requirement
* *FB* - Client feedback
