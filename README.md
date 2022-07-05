# hello-nodejs
hello app using nodejs

## Get secret from bc/hello
SECRET=$(oc get bc/hello -o jsonpath='{.spec.triggers[*].generic.secret}')

## Get webhook of bc/hello
oc describe bc/hello |grep -i Webhook

https://api.na46a.prod.ole.redhat.com:6443/apis/build.openshift.io/v1/namespaces/bsaoda-probes/buildconfigs/hello/webhooks/WUEwTKgyc2-cwGh49lqj/github

## Add Webook gnenric of OpenShift
https://api.na46a.prod.ole.redhat.com:6443/apis/build.openshift.io/v1/namespaces/bsaoda-probes/buildconfigs/hello/webhooks/WUEwTKgyc2-cwGh49lqj/generic

## Add Webhook in github

<img src="/img/01-add-webhook.png" width="50%" height="50%" title="Add Webhook in github" alt="Add Webhook"></img>


## Add payload URL from OpenShift

<img src="/img/"02.Add-payload-URL.png" width="50%" height="50%" title="Add payload URL in github" alt="Add payload"></img>
