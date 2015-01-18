# conda-vpython-recipes

# To *install* vpython in anaconda do this

You do *not* need to build vpython yourself to use it in anaconda. To install it all you need to do is:

```
conda install -c mwcraig vpython
```

# To *build* vpython and dependencies from source in anaconda


Use these recipes to build [vpython](http://vpython.org) for the
[anaconda python distribution](https://store.continuum.io/cshop/anaconda/).

In more detail, assuming you have anaconda installed and you have downloaded this repo:

```bash
conda update conda  # a good habit, always
conda install conda-build  # unless you already have it, of course
cd conda-vpython-recipes  # or whathever you called it
conda build boost-vpython # boost needs to be built before vpython
conda build fonttools polygon2 ttfquery vpython
```
