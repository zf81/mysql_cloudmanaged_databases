# mysql_cloudmanaged_databases

Setting up MySQL on GCP and Azure

GCP
In Google Cloud, log in with your Stony Brook email address (be sure that you are logged in to your Stony Brook address and not any other gmail account)
Click on the AHI-GCP drop down folder and select New Project 
Here, you will create an individual project. I named it HHA504-WK4A-HW. Make sure the Organization is set to stonybrook.edu and Location is set to AHI-GCP
Enter the project, click the Navigation Menu (hamburger icon) and select SQL
Click on the "create instance" option and select MySQL as the database engine
Give your new instance an Instance ID with your assignment name and choose your password
We will keep the database version as "MySQL 8.0"

Use these configurations to decrease the cost of the instance:
Switch Cloud SQL edition to 'Enterprise' instead of 'Enterprise Plus'
For preset, select 'Sandbox' in the dropdown menu
Switch zonal avaliability to 'single zone'
Clicked 'show configuration options' to further customzie the instance
Under 'show configuration options' you can customize the instance further 
In Machine Configuration: switch to 'shared core' 
Select '1 vCPU, 0.614 GB'
Under Storage, choose '10 GB'

Under Connections, we want to allow inbound traffic from the world wide web:
At Connections, select 'ADD A NETWORK'
Name the connection as 'Allow All'
Set network to 0.0.0.0/0
Click 'done'
Scroll to the bottom and click 'Create Instance'

MySQL Workbench Database Interaction
Open MySQL Workbench on your computer
Create a new connection and give it a name 
Switch the Hostname to the Public IP address which you can locate in your created instance
Port: 3306
For Password, select 'Store in Vault' and paste the password for the created instance
At the bottom, click on 'Test Connection' to ensure the workbench successfully connected to the GCP instance
Click 'OK' to create connection

Microsoft Azure
Log in to Azure with your Stony Brook email
Under Azure Services, click on Azure Databases for MySQL and then click on +Create
Select Flexible server
Check to make sure the subscription is set to Azure for Students
Name the server and select 'for development or hobby projects' as workload type
For compute + storage, choose 'Burstable, B1ms'
Create an admin username and password
Networking:
Under firewall rules, select '+add 0.0.0.0 - 255.255.255.255'
A pop-up message will appear, click 'continue' 
Press 'Create' to create the server

MySQL Workbench Database Interaction
Created a new connection
Create a new connection and give it a name 
Switch the Hostname to the Server Name provided in your created instance
Port: 3306
For the username, make sure it matches the server admin login name which was created in the Azure server
For  the password, choose 'Store in Vault' and paste in the password for the created server
At the bottom, click on 'Test Connection' to ensure the workbench was connected to the Azure server
Click 'OK' to create connection

After connecting the GCP instance and Azure instance to MySQL Workbench, I created an Entity Relationship Diagram for both the GCP and Azure connections. Some of the tables I used (patients, doctors, and demographics) were taken from Professor Hants' Github Week 4 folder. 
