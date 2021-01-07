# Uploading artifacts to Github Workflow
- If your job produces an Artifact that users need to view, or needs to be passed to another build machine, the Artifact UPload and Download can help with this process.
- Just Add the followingf code to your build pipeline, and it will then start publishing the artifact once the step has completed.

```yaml
- name: Upload Artifact to Github Build Job
  uses: actions/upload-artifact@v2
  with:
    name: my-artifact
    path: path/to/artifact/world.txt
```
### Linkage
https://github.com/actions/upload-artifact