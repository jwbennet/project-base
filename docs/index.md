# Introduction

## Commands

This project uses a [Taskfile](https://taskfile.dev/) and all commands are summarized by executing it with `task`.

## Project layout

    .devcontainer/
        .devcontainer.json  # Provides configuration for creating a development environment with all necessary tooling installed.
    .github/
        .commitlintrc       # Configures linting for commit messages.
        .lintstagedrc       # Configures linting for various file types before Git commit.
        .mkdocsrc           # Configures how the project documentation is built and deployed.
        .precommitrc        # Configures project Git hooks.
        .prettierrc         # Configures the Prettier code formatter.
    docs/
        index.md            # The documentation homepage.
        ...                 # Other project documentation Markdown and assets.
    .editorconfig           # Configures whitespace handling for IDEs.
    renovate.josn           # Configures the dependency update system
    Taskfile.yaml           # Configures a task runner which provides shortcuts for project commands.

## Tooling Documentation

-   [commitlint](https://commitlint.js.org/) - Linting for commit messages
-   [Dev Containers](https://containers.dev/implementors/json_reference/) - Development environment in a container
-   [EditorConfig](https://editorconfig.org/) - IDE whitespace configuration
-   [lint-staged](https://www.npmjs.com/package/lint-staged?activeTab=readme#configuration) - Linting for project files
-   [MkDocs](https://www.mkdocs.org/user-guide/) - Project documentation
-   [pre-commit](https://pre-commit.com/#usage) - Git hooks
-   [Prettier](https://prettier.io/) - Code formatter
-   [Renovate](https://docs.renovatebot.com/) - Dependency updater
-   [Taskfile](https://taskfile.dev/usage/) - Project task runner
