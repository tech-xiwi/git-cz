# Changelog

### [v0.4.2](https://github.com/ttys3/git-cz/compare/v0.4.1...v0.4.2) (2021-01-18)

#### Fixes

* update to dialoguer = "0.7.1", now left and right arrow key works finally 4286799


### [v0.4.1](https://github.com/ttys3/git-cz/compare/v0.4.0...v0.4.1) (2021-01-18)

### ⚠ BREAKING CHANGE

* repo name changed from git-commitizen to git-cz


## [v0.4.0](https://github.com/ttys3/git-cz/compare/v0.3.5...v0.4.0) (2021-01-18)

### ⚠ BREAKING CHANGE

* binary name changed from convco to git-cz


### [v0.3.5](https://github.com/ttys3/git-cz/compare/v0.3.4...v0.3.5) (2021-01-18)

#### Fixes

* **commit:** refine default type fallback logic 6ef0e75


### [v0.3.4](https://github.com/ttys3/git-cz/compare/v0.3.3...v0.3.4) (2021-01-18)

#### Fixes

* **commit:** fixup fuzzy finder feature 9aac63a


### [v0.3.3](https://github.com/ttys3/git-cz/compare/v0.3.2...v0.3.3) (2021-01-18)

#### Features

* add skim fuzzy finder 71c6eb9


### [v0.3.2](https://github.com/ttys3/git-cz/compare/v0.3.1...v0.3.2) (2020-10-29)

#### Features

* **commit:** improve commit dialog dee58c2


### [v0.3.1](https://github.com/ttys3/git-cz/compare/v0.3.0...v0.3.1) (2020-08-30)

#### Features

* **commit:** improve commit dialog acf3aea


## [v0.3.0](https://github.com/ttys3/git-cz/compare/v0.2.3...v0.3.0) (2020-08-23)

### ⚠ BREAKING CHANGE

* **version:** changes behaviour if `--bump` is used in combination with `--major`, `--minor` or `--patch`

### Features

* **commit:** validate commit message created by `convco commit` 76b8ff4
* Allow a custom scope regex in the configuration dc03118, closes #8
* **changelog:** Add option to set custom template directory in `.versionrc` 01c9ea9, closes #3

### Fixes

* **version:** prioritize `--major` `--minor` `--patch` over `--bump` 8c728a8


### [v0.2.3](https://github.com/ttys3/git-cz/compare/v0.2.2...v0.2.3) (2020-05-17)

#### Features

* relax regex for scope to allow -/_ as separator 61ee293
* allow a scope to contain numbers 768492a


### [v0.2.2](https://github.com/ttys3/git-cz/compare/v0.2.1...v0.2.2) (2020-02-16)

#### Features

* **changelog:** find host, owner and repository from the origin url 2675fcb


### [v0.2.1](https://github.com/ttys3/git-cz/compare/v0.2.0...v0.2.1) (2020-01-21)

#### Features

* **version:** Change rules for major version zero 592c77c

#### Fixes

* **commit:** make cli require the commit type 8c434c3
* **changelog:** use stop revision if range is given 9bd679d


## [v0.2.0](https://github.com/ttys3/git-cz/compare/v0.1.1...v0.2.0) (2020-01-12)

### Features

* **commit:** a new commit subcommand added 5c47789, closes #5


### [v0.1.1](https://github.com/ttys3/git-cz/compare/v0.1.0...v0.1.1) (2019-12-29)

#### Fixes

* **changelog:** take the date of the tag or last commit of a version bf514cd


## v0.1.0 (2019-12-26)

### Features

* **version:** add option to print bump label a0777ca
* **changelog:** sort sections fe2c9a2
* **changelog:** parse issue references bd7f08f
* **changelog:** add breaking changes and read `.versionrc` file. e521814
* Introduces convco with 3 tools: check, version and changelog. 116ad53


