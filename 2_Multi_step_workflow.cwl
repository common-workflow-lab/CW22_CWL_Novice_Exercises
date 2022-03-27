cwlVersion: v1.2
class: Workflow

requirements:
  MultipleInputFeatureRequirement: {}


inputs:
  rna_reads_forward:
    type: File
    format: https://edamontology.org/format_1930  # FASTQ
  rna_reads_reverse:
    type: File
    format: https://edamontology.org/format_1930  # FASTQ

steps:
  quality_control_forward:
    run: bio-cwl-tools/fastqc/fastqc_2.cwl
    in:
      reads_file: <input file>
    out: [zipped_file]

  quality_control_reverse:
    run: <tool descriptor>
    in: <input variable>
    out: <output array>

  combine_reports:
    run: bio-cwl-tools/multiqc/multiqc.cwl
    in:
      qc_files_array:
        - <step name>/<output variable>
        - <step name>/<output variable>
    out: [<html output - check tool descriptor>]
    
outputs:
  report:
    type: <output type>
    outputSource: <output source>