#!/usr/bin/env cwl-runner

class: CommandLineTool

cwlVersion: v1.0

requirements:
- class: DockerRequirement
  dockerPull: "public.ecr.aws/dcic-4dn/4dn-fastq-first-line:v2"

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
  first_line:
   type: File
   outputBinding:
    glob: "$(inputs.outdir + '/' + '*first_line.txt')"

baseCommand: ["run-fastq-first-line.sh"]
