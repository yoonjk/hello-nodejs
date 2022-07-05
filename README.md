# hello-nodejs
hello app using nodejs

** Get secret from bc/hello
SECRET=$(oc get bc/hello -o jsonpath='{.spec.triggers[*].generic.secret}')

** Get webhook of bc/hello
oc describe bc/hello |grep -i Webhook

https://api.na46a.prod.ole.redhat.com:6443/apis/build.openshift.io/v1/namespaces/bsaoda-probes/buildconfigs/hello/webhooks/WUEwTKgyc2-cwGh49lqj/github

** Add Webook gnenric of OpenShift
https://api.na46a.prod.ole.redhat.com:6443/apis/build.openshift.io/v1/namespaces/bsaoda-probes/buildconfigs/hello/webhooks/WUEwTKgyc2-cwGh49lqj/generic

![Alt text](/img/01-add-webhook.png "Add Webhook in github")

![Alt text](/img/02.Add-payload-URL.png "Add payload URL in github")
