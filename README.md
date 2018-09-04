# openshift-analysis

![Docker Automated](https://img.shields.io/docker/automated/gerald1248/openshift-analysis.svg)
![Docker Build](https://img.shields.io/docker/build/gerald1248/openshift-analysis.svg)

Analysis pod for debugging: deploy within your project and run `ab`, `dig`, `netstat`, `nslookup`, `telnet`, `traceroute`, `wget`, and so on as well as database clients for MySQL and PostgreSQL.

## Quick start
Run the analysis container from Docker Hub as follows:
```
$ oc run analysis -i --tty --rm --image=gerald1248/openshift-analysis:latest
```

## For repeated use...
...run `oc new-app` then `oc rsh`:
```
$ oc new-app --name=analysis --docker-image=gerald1248/openshift-analysis:latest
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
$ oc get po
NAME                         READY     STATUS    RESTARTS   AGE
openshift-analysis-1-pczgr   1/1       Running   0          2m
$ oc rsh openshift-analysis-1-pczgr
/app $
```
