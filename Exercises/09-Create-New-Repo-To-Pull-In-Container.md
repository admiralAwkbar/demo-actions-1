- Create a new repo and make this repo an action and pull in the container and use it!

- You could create an `action.yml` on the root of repo with the following data

```yml
name: 'My Action'
author: 'GitHub'
description: 'It is a simple GitHub Action'
runs:
  using: 'docker'
  image: 'docker://ghcr.io/ORG_NAME/REPO_NAME@VERSION'
  # image: 'Dockerfile` # Will run the dockerfile from the root of the repo and not pull it like from above
branding:
  icon: 'check-square'
  color: 'white'
```

- You can then open a new repo, create a worklfow, and point to this repo, and it will luanch the docker contrainer