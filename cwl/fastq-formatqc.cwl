#!/usr/bin/env cwl-runner

class: CommandLineTool

cwlVersion: v1.0

requirements:
- class: DockerRequirement
  dockerPull: "4dndcic/4dn-fastq-formatqc:v1"

- class: "InlineJavascriptRequirement"

inputs:
  fastq:
   type: File
   inputBinding:
    position: 1

  outdir:
   type: string
   inputBinding:
    position: 2
   default: "."

outputs:
  match_count:
   type: File
   outputBinding:
    glob: "$(inputs.outdir + '/' + '*first_line.txt')"

baseCommand: ["run-fastq-formatqc.sh"]
