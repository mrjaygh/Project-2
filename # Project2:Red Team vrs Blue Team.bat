# Project2:Red Team vrs Blue Team

.Project Description

.Red Team vs Blue Team scenario, where I played the of both pentester and SOC analyst.

The role of the Red Team was to attacked a vulnerable VM within an azure lap enviroment and gained root access to the machines.
As the Blue Team , I used Kibana to review logs taken during the attack using the log files of the attack to create visulizations data report. Then I used to the report to suggest mitigation stategies for the exploits.

Porject Objectives

This project will apply the knowledge and use of the following skills and tools:
Penetration testing with kali Linux.
Log and incident analysis with Kibana.
System hardening and configuration.
Reporting, documentation, and communication.

The technical skills of this project were performed in a lab environment located in Windows Azure Lab Services.

Red Team

Before performing the attack it was essential to setup the backend logs to capture the attack data.

Beats and commands used to set up Kibana.

Filebeat

.filebeat modules enable apache
.filebeat setup

Metricbeat

.metricbeat modules enable apache
.metricbeat setup

Packetbeat

.packetbeat modules enable apache
.packetbeat setup

Restarting to ensure they working and operational

.systemctl restart filebeat
.systemctl restart metricbeat
.systemctl restart packetbeat

Red Team Instructions

Discover the IP address of the Linux web server.
Locate the hidden directory on the web server.
Brute force the password for the hidden directory using Hydra.
Break the hashed password with the Crack Station website or John the Ripper.
Connect to the server via WebDAV.
Upload a PHP reverse shell payload.
Execute payload to open up a meterpreter session.
Find and capture the flag.

Blue Team

Blue Team Instructions

Using Kibana to analyse logs taken during the Red Team attack. The data will be used to develop ideas for new alerts that can improve monitoring.
Even though I already know what I did to exploit the target, analysing logs is still valuable. It teaches:
What your attack looks like from a defender's perspective.
How stealthy or detectable your tactics are.
Which kinds of alarms and alerts SOC and Incident Response professionals can use to spot these types of attacks while they occur, rather than after.

Creating Dashboards

Using the Dashboards I added the following reports:

.HTTP status codes for the top queries [Packetbeat] ECS
.Top 10 HTTP requests [Packetbeat] ECS
.Network Traffic Between Hosts [Packetbeat Flows] ECS
.Top Hosts Creating Traffic [Packetbeat Flows] ECS
.Connections over time [Packetbeat Flows] ECS
.HTTP error codes [Packetbeat] ECS
.Errors vs successful transactions [Packetbeat] ECS
.HTTP Transactions [Packetbeat] ECS

Using the search queries in the Discover screen with packetbeat I was tasked with the following:

.Identify the offensive traffic.
.Find the request for the hidden directory.
.Identify the brute force attack.
.Find the WebDAV connection.
.Identify the reverse shell and meterpreter traffic.

Please view the attached Presentaion to view the final stage of my result.
