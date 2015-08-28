# Ion
*The* Iodine Package Manager.

## Supported commands
```bash
$ ion install <package>
$ ion uninstall <package>
$ ion install-deps
$ ion list-installed
```

`install-deps` will install all listed dependencies in `./ionfile.json`.

## Getting Started
Create a new, empty directory, then run this:
```bash
$ ion init
```

This will set up your project in a way that Ion can use and package properly. Dependencies will then be installed to src/.deps. 
You should add a .gitignore containing:
```gitignore
.deps
```
This means that old dependencies won't be bundled with your project. Instead, tell your users to run:
```bash
$ ion install-deps
```

You can add new dependencies with:
```bash
$ ion install --save yes <package>
```
This will install the package to `.deps` and save it to `ionfile.json`, with the version. Versions in Ion use semantic 
versioning, so you can assume that any breaking change will be indicated by an increase of the major version. 

Because of this, Ion uses a special matching format, using the caret (`^`), so that users automatically install the latest 
compatible versions.
```
^1.3.2 matches:
1.3.2, 1.3.3, 1.4.0, 1.5.0
It does not match:
1.3.1, 2.0.0
```

## Packaging
Once you're done, you can run `ion package`, fill in the correct information, then 
[create an issue](https://github.com/IodineLang/Ion-Default-Repo/issues/new) at the Ion Default Repo, with the generated 
file. You could put it on [GitHub Gists](https://gist.github.com) and share that link with us, if you prefer.

If accepted, your project will then be added to the repo, and you will be able to run:
```
ion install myproject
```
