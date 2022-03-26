cwlVersion: v1.2
class: Workflow

inputs:
  rna_reads_reverse: File

steps:
  quality_control:
    run: bio-cwl-tools/fastqc/fastqc_2.cwl
    in:
      reads_file: <input file>
    out: [html_file]

outputs:
  quality_report:
    type: File
    outputSource: <step name>/<output variable>
