# CW22 CWL Novice Template

CWL Template for the [Collaborations Workshop 2022 CWL Tutorial](https://software.ac.uk/cw22/mini-workshops-and-demo-sessions#2.4b).

This template contains scripts for use in the tutorial. 
It also contains instructions for installing the bio-cwl-tools library.

Before following the tutorial you should follow the software installation instructions in the CWL Tutorial [Setup page](https://carpentries-incubator.github.io/cwl-novice-tutorial/setup.html).

 
#### Setup Instructions

This repository template can be used to create a new git repository, for you to store the 
scripts that you create during the tutorial for later reference. The steps for doing this  
are listed below. The `--recursive` flag is used when cloning the repository locally, 
which will automatically load the bio-cwl-tools library too, using `git submodules`.

##### 1. Creating your own github repository

Click the `Use this template` button, and create a new repository on github as you would usually.

##### 2. Clone the repository locally

Clone the repository locally, using `git clone --recursive [template address]` (the `[template address]` can be got from the `Code` button at the top of the page).
   
##### 3. Downloading input files

The required input files can be downloaded by running `bash download_inputs.sh`. This will 
create the directory `rnaseq`, and download the files `GSM461177_1_subsampled.fastqsanger` 
and `GSM461177_2_subsampled.fastqsanger`. Note that these files are each 136Mb large, so 
will take a few minutes to download, depending on your internet connection speed. 

#### Workshop Instructions

There are two workflows in the repository, `1_Single_step_workflow.cwl` and `2_Multi_step_workflow.cwl`. These can be run using the commands:
1. `cwltool 1_Single_step_workflow.cwl workflow_input.yml`
2. `cwltool 2_Multi_step_workflow.cwl workflow_input.yml`

The scripts need to be completed before being run - replace the blocks indicated by `< >` 
with the appropriate code. Working examples of these scripts are provided in the 
`CWL_Script_Solutions` directory (note that you will have to copy these to the base 
directory to run though, so that the tool paths are correct).



