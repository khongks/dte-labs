oc project cp4i
oc get pods | grep -v Running | grep -v Completed | awk '{print $1}' | xargs oc delete pods 
oc project ibm-common-services
oc get pods | grep -v Running | grep -v Completed | awk '{print $1}' | xargs oc delete pods
