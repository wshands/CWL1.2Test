#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

#label: {"$include":"metadata.txt"}
label: "foo"

inputs: []

outputs:
  classout:
    type: File
    #outputSource: compile/compiled_class
    outputSource: create-tar/tar_compressed_java_file

requirements:
  SubworkflowFeatureRequirement: {}

steps:
#  compile:
#    run: 1st-workflow.cwl
#    in:
#      tarball: create-tar/tar_compressed_java_file
#      name_of_file_to_extract:
#        default: "Hello.java"
#    out: [compiled_class]

  create-tar:
    in: []
    out: [tar_compressed_java_file]
    run:
      { "$import": "tar_tool.cwl" }
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

