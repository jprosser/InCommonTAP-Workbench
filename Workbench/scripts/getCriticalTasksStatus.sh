#/bin/bash

###config settings###
#mp_username='administrator'
#mp_userpass='5ecr3t'
mp_username='banderson'
mp_userpass='Password1'
####################

###declarations###
declare -A KeyTasks

###functions###
function getTaskStatus() {
       KeyTasks=( ["Grouper Livesync"]="552112fc-9546-4e63-a170-339d99a3455e" ["COmanage Livesync"]="5a821505-7318-4364-9a2f-501b8bf30b44" \
                  ["COmanage Import"]="ec605247-fcb3-42f7-a241-3b1aaa96cea4" ["Grouper reconcile groups"]="22625b6c-e9a7-4151-88f8-013abb1cc158" \
                  ["Grouper reconcile subjects"]="95539396-14ce-4787-aaa8-c93e2aacfbc0" ["Recompute all users"]="f71bd7ce-2329-42da-a71e-b7c45ebed549" )
       mp_baseUrl='https://localhost:10443/midpoint/ws/rest'

       for taskname in "${!KeyTasks[@]}"; do
        if [ "$taskname" = "$1" ]; then
               thisTaskOid=${KeyTasks[$taskname]}
               thisTaskName=$taskname
        fi
       done

       url=$mp_baseUrl/tasks/$thisTaskOid
       #echo "URL is: $url"
       rawVal=$(curl -s -k --user $mp_username:$mp_userpass -H "Accept: application/json" -X GET $url)
       if [ $? -ne 0 ]; then
         echo "ERROR: Problem connecting to host.  Exiting..."
         echo ""
         exit 1
       fi

       taskStatus=$(echo $rawVal | jq -r '.task.executionState')
       echo "Task Name: $thisTaskName"
       #echo "Task OID: $thisTaskOid"
       if [ "$taskStatus" = "running" ]; then
               echo "task is running"
       elif [ "$taskStatus" = "runnable" ]; then
               echo "task is runnable"
       else
               echo "*** task has failed (status=$taskStatus) ***"
       fi

       echo ""
}

### Main ###
echo "midPoint Critical Task Status Check"
echo ""
getTaskStatus "Grouper Livesync"
getTaskStatus "COmanage Livesync"
getTaskStatus "COmanage Import"
getTaskStatus "Grouper reconcile groups"
getTaskStatus "Grouper reconcile subjects"
getTaskStatus "Recompute all users"
echo ""
echo ""

