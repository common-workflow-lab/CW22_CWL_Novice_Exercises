# CW22 CWL Novice Template

CWL Template for the [Collaborations Workshop 2022 CWL Tutorial](https://software.ac.uk/cw22/mini-workshops-and-demo-sessions#2.4b).

This template contains scripts for use in the tutorial. 
It also contains instructions for installing the bio-cwl-tools library.

Before following the tutorial you should follow the software installation instructions in the CWL Tutorial [Setup page](https://carpentries-incubator.github.io/cwl-novice-tutorial/setup.html).

 
#### Setup Instructions

This repository can be cloned directly to your computer, or the template can be used to create a new git repository, for you to store the scripts that you create during the tutorial for later reference. The steps for the two options are listed below. In each option the `--recursive` flag is used when cloning the repository locally. This automatically loads the bio-cwl-tools library too, using `git submodules`.

##### 1. Creating your own github repository

1. Click the `Use this template` button, and create a new repository on github as you would usually
   * Before the next step you can, if you wish, copy this repository to a different git service (such as [gitlab](https://gitlab.com/)).  
2. Clone the repository locally, using `git clone --recursive [template address]` (the `[template address]` can be got from the `Code` button at the top of the page)
   
##### 2. Cloning direct from this repository

1. Clone the repository locally, using `git clone --recursive https://github.com/common-workflow-lab/cwl-novice-tutorial-data.git`

##### 3. Downloading input files

1. The required input files can be downloaded by running `bash download_inputs.sh`. This will create the directory `rnaseq`, and download the files `GSM461177_1_subsampled.fastqsanger` and `GSM461177_2_subsampled.fastqsanger`.

#### Workshop Instructions

There are two workflows in the repository, `1_Single_step_workflow.cwl` and `2_Multi_step_workflow.cwl`. These can be run using the commands:
1. `cwltool 1_Single_step_workflow.cwl workflow_input.yml`
2. `cwltool 2_Multi_step_workflow.cwl workflow_input.yml`

The scripts need completing - replace the blocks indicated by `< >` with the appropriate code.



