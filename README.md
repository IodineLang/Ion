# Ion
Ion is *the* package manager for Iodine projects. Never again will you have to
manually copy projects and include them in your `modules/` directory; Ion takes
care of that automatically, so you can focus on running the programs you want 
while still having access to powerful libraries.

## Found a bug?
First, identify where the issue is. Then, click the relevant link below and log an issue.

### [A package from the default repo won't install properly.](https://github.com/IodineLang/Ion-Default-Repo/issues)

### [Ion crashes or shows an error message.](https://github.com/IodineLang/Ion/issues)

### [Modules don't install correctly.](https://github.com/IodineLang/Ion/issues)

### [Other issue.](https://github.com/IodineLang/Ion/issues)

## For Developers
Want to add your project to the Ion default repository? [Create a request here]
(https://github.com/IodineLang/Ion-Default-Repo/issues) in the following format:

    Project Name: Foobar Library
    Module Name: foobar
    Maintainer: @FooBar
    Project URL: https://github.com/FooBarProj/FoobarLib
    Version: v0.2.3
    Depends: - loglib (~v0.1.0)
             - semver (>=v0.1.0 <v0.2.0)
    Download: https://github.com/FooBarProj/FoobarLib/releases/v0.2.3.zip
    
Once your project is added, you might like to add a badge, showing to your users
that you support Ion. Simply add this to your README.md:

    [![ion install modulename](https://img.shields.io/badge/ion%20install-modulename-blue.svg?style=flat-square)](https://github.com/IodineLang/Ion)
    
    
You'll need to replace `modulename` in the URL and the alt text (inside the 
square brackets after the exclamation mark). This will create a beautiful 
badge like this:

[![ion install modulename](https://img.shields.io/badge/ion%20install-modulename-blue.svg?style=flat-square)](https://github.com/IodineLang/Ion)

In addition, it's a wise idea to list your version prominently in the README.

When distributing your project, please use [semantic versioning (*semver*)]
(http://ricostacruz.com/cheatsheets/semver.html). This will mean that other 
projects that depend on you can depend on ranges or tilde/caret version matches
as opposed to pinned versions. Therefore, any critical bug patches go through 
instantly to all of your dependencies.

## For Users
### Installing Ion
#### Linux
Run the `setup.sh` script. Then you can run Ion directly from the command line
like this (at a terminal):

    > ion help

#### Windows
TODO.

### Using Ion
#### Package Mode
There are three main packages modes that you can install your packages to:
- `--local`, which installs packages and installation data to the current working directory (all users can access this, but
only the project in the current directory can access this)
- `--global`, which installs to the Iodine `modules/` directory (all users can access this)
- No flag, which installs to the `.ion` folder in your home/user directory (only you can access this).

You'll probably need root/administrator privileges to use `--global`. Most commands will work with these flags and produce different output. If a library is defined in multiple locations, the priority order is:

- Local
- Global
- .ion

Keep this in mind if you anticipate conflicts.

#### Installing a module

    ion install module
    
If you use the global flag, the module will be available to all users. You'll 
probably need root access (e.g. `sudo`) to run that, though. If you run it 
without the global flag, only you will be able to access the module.

#### Removing a module

    ion remove module
    
#### Getting help

    ion help
    
#### Searching and getting package information

    ion search module
    
#### Adding a repository
By default you already have the `Default` repository installed. If you wish to 
add another repository, bare in mind that they could easily trample other 
modules and damage your system. Make sure that they're trustworthy first.

    ion add-repo
    
**Or:**

    ion add-repo name url
    
If you run `add-repo` without arguments, an interactive wizard will be shown.

#### Listing repositories

    ion list-repos
    
#### Deleting a repository

    ion delete-repo name
    
If necessary, find the name from `list-repos`.
