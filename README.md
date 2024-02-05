# Project Base

This project holds templates of the baseline configurations used for projects I maintain. It is based around [copier](https://copier.readthedocs.io/) which is used to template and copy the project contents into a new project when executed.

## Supported tools

-   [commitlint](https://commitlint.js.org/) - Linting for commit messages
-   [Dev Containers](https://containers.dev/implementors/json_reference/) - Development environment in a container
-   [EditorConfig](https://editorconfig.org/) - IDE whitespace configuration
-   [lint-staged](https://www.npmjs.com/package/lint-staged?activeTab=readme#configuration) - Linting for project files
-   [MkDocs](https://www.mkdocs.org/user-guide/) - Project documentation
-   [pre-commit](https://pre-commit.com/#usage) - Git hooks
-   [Prettier](https://prettier.io/) - Code formatter
-   [Renovate](https://docs.renovatebot.com/) - Dependency updater
-   [Taskfile](https://taskfile.dev/usage/) - Project task runner

## Docker image

This project includes a simple Docker container which may be used to execute `copier` without needing to install it on the machine. This container may be executed on the contents of the current working directory as follows:

```sh
docker container run -ti --rm -v $(pwd):/project jwbennet/copier:9.1.1 gh:jwbennet/project-base
```

You may substitute other `copier` templates by changing the name referenced above from `gh:jwbennet/project-base` (see [copier's documentation on generating a project](https://copier.readthedocs.io/en/stable/generating/)). This has primarily been tested on the Windows Subsystem for Linux where the default UID is 1000 which matches the user ID within the container. If your UID does not match you may need to change the owner of the files to your current user ID after the container is complete. Another alternative is to [install copier](https://copier.readthedocs.io/en/stable/#installation) directly on your machine which bypasses the complication of running inside the container.
