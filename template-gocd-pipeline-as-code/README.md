# The GOCD configuration (with templates) are here

## Adding GoCD templates to your project

Add this repository like a submodule to your project
  ```
  git submodule add ../template-gocd-pipeline-as-code.git
  mkdir gocd
  ```

## Working with templates

1. Edit **gocd/pipelines.yaml** to describe who generate the C# .NET Framework pipelines
2. Put each pipeline on environment editing the **gocd/environment.yaml**
3. run `cd templates-gocd-pipeline-as-code && make` to generate the final GOCD configuration file **build.gocd.yaml**

