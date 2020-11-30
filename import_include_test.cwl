#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

#label: {"$include":"metadata.txt"}

inputs: []

outputs:
  classout:
    type: File
    outputSource: create-tar/tar_compressed_java_file

requirements:
  SubworkflowFeatureRequirement: {}

steps:
  create-tar:
    in: []
    out: [tar_compressed_java_file]
    run:
      tar_tool.cwl

      #{ "$import": "tar_tool_inline.cwl" }

      #      class: CommandLineTool
      #      requirements:
      #        InitialWorkDirRequirement:
      #          listing:
      #            - entryname: Hello.java
      #              entry: |
      #                public class Hello {
      #                  public static void main(String[] argv) {
      #                      System.out.println("Hello from Java");
      #                  }
      #                }
      #      inputs: []
      #      baseCommand: [tar, --create, --file=hello.tar, Hello.java]
      #      outputs:
      #        tar_compressed_java_file:
      #          type: File
      #          streamable: true
      #          outputBinding:
      #            glob: "hello.tar"

