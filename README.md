# openshift-analysis
Analysis pod for debugging

## Quick start
```
$ oc run openshift-analysis -i --tty --rm --image=gerald1248/openshift-analysis:latest
```

## Steps
```
$ oc create -f analysis.yaml
$ oc start-build bc/analysis
$ oc logs -f bc/analysis
$ oc run analysis -i --tty --rm --image=<Docker registry>:<Docker registry port>/<current project>/analysis:latest
```
A typical invocation for a `minishift` installation might be:
```
$ oc run analysis -i --tty --rm --image=172.30.1.1:5000/myproject/analysis:latest
```
`172.30.1.1` is the internal Docker registry, `5000` its default port and `myproject` is the current working project. The output of `oc logs -f bc/analysis` prints the full string required for the `--image` parameter:
```
Pushing image 172.30.1.1:5000/myproject/analysis:latest ...
Pushed 0/3 layers, 24% complete
Pushed 1/3 layers, 33% complete
Pushed 2/3 layers, 83% complete
Pushed 3/3 layers, 100% complete
Push successful
```
