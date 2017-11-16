# openshift-analysis
Analysis pod for debugging

```
$ create -f analysis.yaml
$ oc start-build bc/analysis
$ oc run analysis -i --tty --rm --image=<Docker registry>:<Docker registry port>/<current project>/analysis:latest
```
A typical invocation for a `minishift` installation might be:
```
* oc run analyze -i --tty --rm --image=172.30.1.1:5000/myprojectr/analyze:latest
```
`172.30.1.1` is the internal Docker registry, `5000` its default port and `myproject` is the current working project.
