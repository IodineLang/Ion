# Ion
*The* Iodine Package Manager.

# Usage
## Linux
    
    ./setup.sh
    ion add-repo Default iodinelang.github.io/Ion-Default-Repo

You can then install packages, like this:

    ion install potassium

# Common Errors
## `Internal exception: Could not create file "/home/user/.ion/packagename/Potassium-master/.gitignore". File already exists.`
Solution:

    ion purge-cache package
    
## `ERR! Abandoning installation - package seems to already exist!`
You already have this package installed (or something went horribly wrong with the installation). Try:

    ion purge package
    ion purge-cache package
    ion install package
    
