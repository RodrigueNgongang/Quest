
### Overview

This solution uses cloud formation to create a vpc within which we deploy and ecs cluster, load balancer, a fargate service with a task definition.
In addition we're also including and baseline security groups and an ECR repository . The load balancer sits in two public subnets and fargate is in a private subnet. 

We allow public access to fargate service through the load balancer and not directly to the container.
We export must of the necessary information that are reused by other stacks. 

### Pre-requisites
1. Build an image for quest webapp --> docker build -t example .
2. Run a container with the image created previously ----> docker run -p 3000:3000 example
3. Run curl command from a different terminal to test if the container is successfully running

### Instructions
1. Run vpc.yaml to spin up the infrastructure
2. Run ecs-cluster.yaml to setup the cluster
3. Tag and upload the image previously created ----> docker tag example AccountId.dkr.ecr.us-east-1.amazonaws.com/ecs-cluster-ecrrepoitory-xxxxxxxxxx (update the region and the cluster accordingly) / docker push AccountId.dkr.ecr.us-east-1.amazonaws.com/ecs-cluster-ecrrepoitory-xxxxxxxxx
4. Run fargate with the following input paramters:

4.a. the vpc stack name
4.b. the ecs-cluster stack name 
4.c. the image uri


### Outputs.
See the images folder.
