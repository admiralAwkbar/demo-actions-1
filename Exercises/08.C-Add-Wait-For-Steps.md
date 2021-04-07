# Wait for step to complete Action
You can use the following code snippet to add wait for completion of steps. 
This will allow you to make decisions on where another step from another job has completed, and what you want to do from that event.

```yaml
- name: Wait for app build success
  uses: fountainhead/action-wait-for-check@v1.0.0
  id: wait-for-build-success
  with:
    token: ${{ secrets.GITHUB_TOKEN }}
    checkName: CI
    ref: ${{ github.event.pull_request.head.sha || github.sha }}

- name: Perform Some Step
  if: steps.wait-for-build-success.outputs.conclusion == 'success'
  run: echo "We have success"

- name: Error message on failure
  if: steps.wait-for-build-success.outputs.conclusion == 'failure'
  run: echo "ERROR! Build failure!
```

### Linkage
- [Wait for check](]https://github.com/fountainhead/action-wait-for-check)