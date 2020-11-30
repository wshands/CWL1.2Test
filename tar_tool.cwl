cwlVersion: v1.2

class: CommandLineTool
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: Hello.java
        entry: |
          public class Hello {
            public static void main(String[] argv) {
                System.out.println("Hello from Java");
            }
          }
inputs: []
baseCommand: [tar, --create, --file=hello.tar, Hello.java]
outputs:
  tar_compressed_java_file:
    type: File
    streamable: true
    outputBinding:
      glob: "hello.tar"
