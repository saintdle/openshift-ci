# Container hosting OpenShift CLI Install and Client amongst other tools
Container image for use with vRealize Automation Codestream to interact with Openshift.

Tooling versions can be updated by changing the Dockerfile ENV lines.

Tools installed:
* Manually 
  * Openshift Install and Client - ver 4.12.28
  * Kubectl - from the OpenShift Client tar
  * Helm - ver 3.6.3
  * yq - ver 4.11.2
* From Latest YUM repos
  * jq
  * expect
  * curl
  * wget
  * git
  * openssl
  * less
  * python + pip

## Getting Started

I wrote a blog post below for Deploying OpenShift using vRealize Automation, using this container
 > https://veducate.co.uk/deploying-openshift-clusters-ipi-using-vra-code-stream/ 

To run locally

> docker pull saintdle/openshift-ci:latest
