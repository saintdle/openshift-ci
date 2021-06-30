# Container hosting OpenShift CLI Install and Client amongst other tools
Container image for use with vRealize Automation Codestream to interact with Openshift.

Tooling versions can be updated by changing the Dockerfile ENV lines.

Tools installed:
* Manually 
* * Openshift Install and Client - ver 4.7.19
* * Kubectl - from the OpenShift Client tar
* * Helm - ver 3.6.2
* * yq - ver 4.9.6
* From Latest YUM repos
* * jq
* * expect
* * curl
* * wget
* * git
* * openssl
* * less
* * python + pip

> docker pull saintdle/openshift-ci:0.1
