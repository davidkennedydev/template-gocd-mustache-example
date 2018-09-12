# template-gocd-pipeline-as-code-example
Example of GoCD pipeline as code generated with templates

## How build

```
cd template-gocd-pipeline-as-code
make
```
## Using docker

If you haven't UNIX environment you can run this on Docker container, that will generate the `build.gocd.yaml` on your host machine.

```
# create image
docker build --label gocd-template:0.2 .

# run on container
touch build.gocd.yaml
docker run --rm -v $(pwd)/build.gocd.yaml:/app/build.gocd.yaml gocd-template:0.2
```
