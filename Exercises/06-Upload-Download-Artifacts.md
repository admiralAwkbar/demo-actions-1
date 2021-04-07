# Uploading and Downloading build artifacts on Github Workflow

- If your job produces a build artifact that users need to view, or need to be passed to another build machine, the **Github Actions** upload and download can help with this process.

### Exercise: Add Upload and Download

1. Add the following code to your build pipeline, and it will then start publishing the artifact once the step has completed.

1. Create a new branch called `Artifacts`
1. Copy and paste the following code snippet into one of your working workflow files:
```yaml
# Upload an artifact to GitHub
- name: Upload Artifact to Github Build Job
  uses: actions/upload-artifact@v2
  with:
    name: my-artifact
    path: path/to/artifact/world.txt

# Download an artifact from GitHub
- name: Download Artifact from Github Build Job
  uses: actions/download-artifact@v2
  with:
    name: my-artifact
```
> **Note:** Please update the path to an artifact that was created in the build process.

### Linkage
- [Upload Artifact](https://github.com/actions/upload-artifact)
- [Download Artifact](https://github.com/actions/download-artifact)