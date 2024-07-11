# docker-4dn-fastq-first-line

_The current version of this pipeline pulls the Docker image from a public AWS Elastic Container Registry. If you prefer to pull from Docker Hub (DH), please use the tagged version utilizing DH: `v2_DH`._

This Docker image is used to run a quality control measure for fastq files. The script simply saves the first line of a fastq file to ensure it is valid.

## Building the Docker image
You need the Docker daemon to rebuild this Docker image. If you want to push it to a different Docker repo, replace `4dndcic/4dn-fastq-first-line:v2` with your desired Docker repo name. You need permission to push to `4dndcic/4dn-fastq-first-line:v2`.
```
docker build -t 4dn-fastq-first-line:v2 .
docker push 4dn-fastq-first-line:v2
```
You can skip this if you want to use an already built image on Docker Hub (image name `4dn-fastq-first-line:v2`) or AWS ECR (image name `public.ecr.aws/dcic-4dn/4dn-fastq-first-line:v2`)
