# openshift-analysis
Analysis pod for debugging

## Quick start
If you'd rather not build the analysis image yourself, you can run it from Docker Hub as follows:
```
$ oc run analysis -i --tty --rm --image=gerald1248/openshift-analysis:latest
```

## For repeated use, run `oc new-app` then `oc rsh`
```
$ oc new-app --docker-image=gerald1248/openshift-analysis:latest
--> Found Docker image d7f14bb (9 minutes old) from Docker Hub for "gerald1248/openshift-analysis:latest"

    * An image stream will be created as "openshift-analysis:latest" that will track this image
    * This image will be deployed in deployment config "openshift-analysis"
    * The image does not expose any ports - if you want to load balance or send traffic to this component
      you will need to create a service with 'expose dc/openshift-analysis --port=[port]' later

--> Creating resources ...
    imagestream "openshift-analysis" created
    deploymentconfig "openshift-analysis" created
--> Success
    Run 'oc status' to view your app.
$ oc rsh `oc get po | awk '{ print $1 }' | head -n2 | grep -v NAME`
/app $
```
