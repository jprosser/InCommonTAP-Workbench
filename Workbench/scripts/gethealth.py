#!/bin/python

containers = ["idp", "idp_ui", "idp_ui_data", "idp_ui_api", "grouper_ui", "grouper_ws", "grouper_daemon", "grouper_data", "comanage", "comanage-cron", "comanage_data", "midpoint_server", "midpoint_data", "webproxy", "wordpress_server", "wordpress_data", "mq", "directory", "sources"]

print("<table><tr><th style='text-align:left;width:150px'>Container</th><th style='text-align:left'>Health Status</th></tr>")
for container in containers:
    from subprocess import Popen, PIPE
    dcmd = "docker ps -f name=workbench_" + container + "_1 --format '{{ .Status }} '"
    pipe = Popen(dcmd, shell=True, stdout=PIPE)
    healthstatus = '<font color="grey">unknown</font>'
    for line in pipe.stdout:
        if ('(' in line):
            healthstatus=line.strip()
            if ("healthy" in healthstatus):
                healthstatus='<font color="green">' + healthstatus + '</font>'
            elif ("unhealthy" in healthstatus):
                healthstatus='<font color="red">' + healthstatus + '</font>'
            else:
                healthstatus='<font color="blue">' + healthstatus + '</font>'
        else:
            healthstatus='<font color="orange">unspecified</font>'
    
    print("<tr><td>" + container + "</td><td>" + healthstatus + "</td></tr>")
print("</table>")
