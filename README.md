# Jenkins Kubernetes plugin shared library

## install HELM

* goto [Play with kubernetes](https://labs.play-with-k8s.com/)
* git clone https://github.com/agilesolutions/jenkins-shared-libraries.git
* run scripts/install-helm.sh
* run scripts/install-jenkins.sh

## Installing jenkins from HELM

```
helm install stable/jenkins \
    --name jenkins \
    --namespace jenkins \
    --values helm/jenkins-values.yml \
    --set Master.HostName=$HOST
```

## some tests

* kubectl -n jenkins rollout status deployment jenkins 
* helm get values jenkins
* helm inspect values stable/jenkins
* 
* 
* 

## Global Pipeline Libraries

---

```bash
open "http://$JENKINS_ADDR/configure"
```

* Click the *Add* button in *Global Pipeline Libraries*
* Type *my-library* as the *Name*
* Type *master* as the *Default version*
* Click the *Load implicitly* checkbox
* Select *Modern SCM* from the *Retrieval method* section
* Select *Git* from *Source Code Management*
* Go to [agilesolutions/jenkins-shared-libraries.git](https://github.com/agilesolutions/jenkins-shared-libraries.git) and fork it
* Copy the address from the *Clone and download* drop-down list, return to Jenkins UI, and paste it into the *Project Repository* field
* Click the *Save* button to persist the changes
