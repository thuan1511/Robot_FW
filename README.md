# Robot_FW
How to use in project:
Install robotmetrics

Case 1: Using pip

pip install robotframework-metrics
Case 2: Using setup.py (clone project and run command within root)

python setup.py install
Execute robotmetrics command to generate report

Case 1: No change in output.xml, log.html file name's and user is in same folder

robotmetrics
Case 2: Change in output.xml, log.html file name's And .xml and .html files are under 'Result' folder

robotmetrics --inputpath ./Result/ --output "output1.xml" --log "log1.html"
For more info on command line options use:

robotmetrics --help
RobotFramework Metrics Report metric-timestamp.html file will be created in current folder | -inputpath if specified

Email will be sent to mentioned recepient with metric-timestamp.html file

Customize Report
Specify Logo in Robotframework metrics:

Custom Logo : Customize your logo by using --logo command line option

--logo "https://mycompany/logo.jpg"
How to Specifiy EMAIL recepients
Default robotmetrics uses gmail server. From command line users have to specific FROM, PWD, TO and CC

robotmetrics --email true --from "user1@gmail.com" --pwd "***********" --to "user2@gmail.com,user3@yahoo.com"
 --cc "user4@yahoo.com,user5@gmail.com" 

From 3.1.2: -E or --email in command line is considered as true

(3.1.2 is in developement - can get by cloning master)

robotmetrics --email --from "user1@gmail.com" --pwd "***********" --to "user2@gmail.com,user3@yahoo.com"
 --cc "user4@yahoo.com,user5@gmail.com"

How to Disable EMAIL
By default email will be sent to mentioned recipients when robotmetrics command is executed. Using --email false can disable email

robotmetrics --email false
How to Ignore Library Keywords in Metrics Report
Use command line options to ignore library keywords
--ignore "Collections,Selenium2Library"
In Metric report, keywords with type value 'for' and 'foritem' are ignored
Following library keywords are ignored in Metrics Report
ignore_library = [
 'BuiltIn',
 'SeleniumLibrary',
 'String',
 'Collections',
 'DateTime',
] 
Generate robotframework-metrics after execution
Execute robotmetrics command after suite or test execution as follows:

Create .bat (or) .sh file with following snippet

robot test.robot &&
robotmetrics [:options]
&& is used to execute multiple command's in .bat file

Modify robotmetrics command as required and execute .bat file

Robotframework metrics will be created after execution

*Performance Improvement (Beta) *

Do you feel robotmetrics command taking more time to capture metrics? Robotframework-metrics have ability to process metrics in parallel using gevent (which helps in saving time)
Step 1: Install gevent
Step 2: Execute robotmetrics command
