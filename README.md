# Visual-Analytics-Distributed-Environment-Scripts
Scripts for Managing a SAS Visual Analytics Distributed Environment.

To install the scripts, follow these steps:

1. git clone https://github.com/Cyb0r/Visual-Analytics-Distributed-Environment-Scripts.git

2. cd Visual-Analytics-Distributed-Environment-Scripts

3. chmod -R 700 *

4. Edit environmentVariables.sh and define the values of the Environment Variables:
- SAS_CONFIG is the path to the SAS configuration directory.
- SAS_LEV is the value of the SAS configuration level directory.
- SAS_HOME is the path to the SAS home directory.
- SAS_USER is the user account used to manage the SAS environment.
- HADOOP_HOME is the path to the Hadoop home directory.
- HDFS_USER is the user account used to manage the Hadoop Distributed File System (HDFS).
- YARN_USER is the user account used to manage the YARN Component of the Hadoop Environment.
- MAPRED_USER is the user account used to manage the MapReduce Component of the Hadoop Environment.

5. Run any of the following commands:
- sudo ./cleanRestart.sh to "clean" restart (i.e. stop, clean then start) all SAS Services.
- sudo ./cleanup.sh to cleanup all SAS Services (i.e. the log files, the temporary files etc...).
- sudo ./reboot.sh to restart the whole Visual Analytics Cluster (i.e. reboot of the machines).
- sudo ./restart.sh to restart (i.e. stop then start) all SAS Services.
- sudo ./shutdown.sh to shutdown the whole Visual Analytics Cluster (i.e. shutdown of the machines).
- sudo ./start.sh to start all SAS Services.
- sudo ./status.sh to get the status of all SAS Services.
- sudo ./stop.sh to stop all SAS Services.

IMPORTANT: Always use sudo when running these commands!
