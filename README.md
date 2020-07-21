# MATLAB Utils

This repository MATLAB basic functions that are in MATLAB Toolboxes, but probably should be in the main package. For example, the [`prctile`](https://www.mathworks.com/help/stats/prctile.html) function is quite basic, but requires the "Statistics and Machine Learning Toolbox" to use.

The functions in this repository follow the same API as the identically named official functions, but often they do not completely implement the API.

## Installation

In GitHub, [download a zip archive](https://github.com/innolitics/matlab-utils/archive/master.zip) containing the code. Unzip the functions and add the `utils` directory to your MATLAB path. If you use git, we recommend installing the functions using a [git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

## Functions

We have implemented the following functions:

| Function Name | Notes |
| --- | --- |
| [prctile](https://www.mathworks.com/help/stats/prctile.html) | Only implements the first call form, `Y = prctile(X,p)` |

## Helping

If there is a function (or a particular way of calling an existing function) that you would like to see added, please check to see if there is a GitHub Issue for it already. If there is, please react with a "thumbs up" in the Issue. If there isn't, create one where the Issue name is the same as the name of the function.

If a function acts differently than the MATLAB version, please note the MATLAB version and provide a test case demonstrating the failure.

## About Innolitics

We are [team of software developers](https://innolitics.com) that help clinical and biotech academic startups (many of whom use MATLAB) commercialize their software.
