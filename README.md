# Git-commitizen

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/git-cz/git-cz/Build%20binary)
[![Crates.io](https://img.shields.io/crates/v/git-cz)](https://crates.io/crates/git-cz)

A Conventional commit cli.

`git-cz` gives tools to work with [Conventional Commits][1].

The tool is still in early development.
It provides already the following commands:

- `git-cz changelog`: Create a changelog file.
- `git-cz check`: Checks if a range of commits is following the convention.
- `git-cz commit`: Helps to make conventional commits.
- `git-cz version`: Finds out the current or next version.

## Installation

`cargo install --git https://github.com/ttys3/git-commitizen.git`

## Docker usage

```shell script
# build the git-cz image
docker build -t git-cz .
# run it on any codebase
docker run -v "$PWD:/tmp" --workdir /tmp --rm git-cz
```

### Use it in .gitlab-ci.yml

If you've created an image and pushed it into your private registry

```yaml
git-cz:check:
  stage: test
  image:
    name: git-cz/git-cz:latest
  script:
    - check
```

## Tools

### Changelog

A changelog can be generated using the conventional commits.
It is inspired by [conventional changelog][2].
Configuration follows the [conventional-changelog-config-spec][3]

```sh
git-cz changelog > CHANGELOG.md
```

### Check

Check a range of revisions for compliance.

It returns a non zero exit code if some commits are not conventional.
This is useful in a pre-push hook.

```sh
git-cz check $remote_sha..$local_sha
```

### Commit

Helps to make conventional commits.
A scope, description, body, breaking change and issues will be prompted.

```sh
# commit a new feature and then run git commit with the interactive patch switch
git-cz commit --feat -- --patch
```

### Version

When no options are given it will return the current version.
When `--bump` is provided, the next version will be printed out.
Conventional commits are used to calculate the next major, minor or patch.
If needed one can provide `--major`, `--minor` or `--patch` to overrule the convention.

```sh
git-cz version --bump
```

It is useful to use it with release tools, such as [`cargo-release`](https://crates.io/crates/cargo-release):

```sh
cargo release $(git-cz version --bump)
```

#### TODO

- [x] automatic notes for breaking changes
- [x] custom template folder
- [x] use a `.versionrc` file
- [x] limit to a range of versions
- [x] sort sections in changelog
- [x] issue references
- [ ] better documentation
- [ ] better error handling

[1]: https://www.conventionalcommits.org/
[2]: https://github.com/conventional-changelog/conventional-changelog
[3]: https://github.com/conventional-changelog/conventional-changelog-config-spec/blob/master/versions/2.1.0/README.md
