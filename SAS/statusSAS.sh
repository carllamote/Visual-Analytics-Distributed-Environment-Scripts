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

echo "++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "For each host defined in /etc/gridhosts, do:"
echo "- sas.servers status"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++"

. ../environmentVariables.sh

for host in `sort -r /etc/gridhosts`; do
    ssh $host "hostname; runuser -l $SAS_USER -c \"$SAS_CONFIG/$SAS_LEV/sas.servers status\"; echo";
done

