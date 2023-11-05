# week 1 DevOps 

## step 0 

change expose port to 80

## step 1 
create dockerfile 


## step 2 
login to awscli 
link 


yuandrk in 🌐 vm_hostname in prometheus/week_1/demo on  main [?] on ☁️  (eu-west-2) 
❯ aws ecr create-repository \
∙     --repository-name hello-repository \
∙     --image-scanning-configuration scanOnPush=true \
∙ ^C

yuandrk in 🌐 vm_hostname in prometheus/week_1/demo on  main [?] on ☁️  (eu-west-2) 
❯ aws ecr create-repository --repository-name devops --image-scanning-configuration scanOnPush=true --region eu-west-2
{
    "repository": {
        "repositoryArn": "arn:aws:ecr:eu-west-2:756755582140:repository/devops",
        "registryId": "756755582140",
        "repositoryName": "devops",
        "repositoryUri": "756755582140.dkr.ecr.eu-west-2.amazonaws.com/devops",
        "createdAt": "2023-11-04T22:39:11+00:00",
        "imageTagMutability": "MUTABLE",
        "imageScanningConfiguration": {
            "scanOnPush": true
        },
        "encryptionConfiguration": {
            "encryptionType": "AES256"
        }
    }
}

## step 3 

push image to AWS ECR 




aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com 


### step 4 

RUN in container 

### step 5 

add s3 to container