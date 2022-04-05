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
      reads_file: rna_reads_forward
    out: [zipped_file]

  quality_control_reverse:
    run: bio-cwl-tools/fastqc/fastqc_2.cwl
    in:
      reads_file: rna_reads_reverse
    out: [zipped_file]

  combine_reports:
    run: bio-cwl-tools/multiqc/multiqc.cwl
    in:
      qc_files_array:
        - quality_control_forward/zipped_file
        - quality_control_reverse/zipped_file
    out: [multiqc_html]
    
outputs:
  combined_quality_report:
    type: File
    outputSource: combine_reports/multiqc_html