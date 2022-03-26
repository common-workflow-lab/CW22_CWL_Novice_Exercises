# CWL Novice tutorial template

CWL Template for the [CWL Novice tutorial](https://carpentries-incubator.github.io/cwl-novice-tutorial/index.html).

This template contains some of the scripts used in the tutorial. 
It also contains instructions for installing the bio-cwl-tools library.

Before following the tutorial you will need to install [VSCode](https://code.visualstudio.com/), [docker](https://www.docker.com/), and [cwltool](https://github.com/common-workflow-language/cwltool). You will also need a working python installation, and either `pip` or `conda`. See the course [Setup page](https://carpentries-incubator.github.io/cwl-novice-tutorial/setup.html) for more details.

 
#### Setup Instructions

This repository can be cloned directly to your computer, or the template can be used to create a new git repository, for you to store the scripts that you create during the tutorial for later reference. The steps for the two options are listed below. In each option the `--recursive` flag is used when cloning the repository locally. This automatically loads the bio-cwl-tools library too, using `git submodules`.

##### 1. Creating your own github repository

1. Click the `Use this template` button, and create a new repository on github as you would usually
   * Before the next step you can, if you wish, copy this repository to a different git service (such as [gitlab](https://gitlab.com/)).  
2. Clone the repository locally, using `git clone --recursive [template address]` (the `[template address]` can be got from the `Code` button at the top of the page)
   
##### 2. Cloning direct from this repository

1. Clone the repository locally, using `git clone --recursive https://github.com/common-workflow-lab/cwl-novice-tutorial-data.git`
   

#### CWLTool and Graphviz Install Instructions

`cwltool` and `graphviz` can be installed using the included conda environment file:
```
conda env create --file cwltutorial.yml
```
To activate the conda environment for these once they are installed use:
```
conda activate cwltutorial
```

If you do not wish to use conda to install these then alternative install instructions 
are included on the course [Setup page](https://carpentries-incubator.github.io/cwl-novice-tutorial/setup.html).

