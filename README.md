# ADP

Task 2
Build terraform orchestration with VirtualBox provider:

1)	Provision a CentOs (7.x) VM  

2)	Create an ansible playbook to provision Nginx & configure the virtual hosts on vm initialization, This playbook should get triggered when Vbox vm boots up and provision everything & serve the pages as mentioned below:
 
 Configuration details
-create below entries on the hosts file where the browser (host system) is running
 myfirstpage.com  127.0.0.1
mysecondpage.com  127.0.0.1
mythirdpage.com 127.0.0.1
 
 
the nginx should serve 3 html files, reasonably designed , with varying content.
  - 1.html
  - 2.html
  - 3.html
 
127.0.0.1/1.html should service 1.html
127.0.0.1/2.html should service 2.html
127.0.0.1/3.html should service 3.html
 
myfirstpage.com should only serve 1.html
mysecondpage.com should only serve 2.html
mythirdpage.com should only serve 3.html
 
please follow best practices, IaC, and leverage testing methodologies/tools wherever possible. commit all your code to a git hub repo and forward the link to us.
