#!/bin/bash

#
# Copyright 2017 Arnaud Van der Vorst
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

. ../environmentVariables.sh

rm -rfv $SAS_CONFIG/$SAS_LEV/WebInfrastructurePlatformDataServer/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/SASMeta/MetadataServer/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/ObjectSpawner/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/SASApp/WorkspaceServer/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/SASApp/PooledWorkspaceServer/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/SASApp/StoredProcessServer/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/Applications/SASWIPSchedulingServices*/dip/*.log
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/Applications/SASWIPSchedulingServices*/dip/serviceLog/*.log
rm -rfv $SAS_CONFIG/$SAS_LEV/Applications/SASInformationRetrievalStudioforSAS/logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/activemq/data/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/gemfire/instances/ins_41415/*.log
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/gemfire/instances/ins_41415/*.dat
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/WebServer/logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/WebAppServer/SASServer*/logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/WebAppServer/SASServer*/work/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/Logs/SASServer*/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/Logs/SASVisualAnalyticsTransportDebug/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Applications/SASVisualAnalytics/HighPerformanceConfiguration/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Applications/SASVisualAnalytics/VisualAnalyticsAdministrator/Monitoring/Logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Applications/SASVisualAnalytics/VisualAnalyticsAdministrator/Monitoring/PIDs/*.pid
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/SASEnvironmentManager/server-*-EE/logs/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/SASEnvironmentManager/server-*-EE/activemq-data/localhost/KahaDB/*
rm -rfv $SAS_CONFIG/$SAS_LEV/Web/SASEnvironmentManager/emi-client/Logs/*

for host in `sort -r /etc/gridhosts`; do
    ssh $host "hostname; runuser -l sas -c \"rm -rfv $SAS_CONFIG/$SAS_LEV/Web/SASEnvironmentManager/agent-*-EE/log/*\"; echo";
done

