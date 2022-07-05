# hello-nodejs
hello app using nodejs


SECRET=$(oc get bc/hello -o jsonpath='{.spec.triggers[*].generic.secret}')

oc describe bc/hello |grep -i Webhook

https://api.na46a.prod.ole.redhat.com:6443/apis/build.openshift.io/v1/namespaces/bsaoda-probes/buildconfigs/hello/webhooks/WUEwTKgyc2-cwGh49lqj/github
