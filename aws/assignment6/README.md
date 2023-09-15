Here is your assignment

In today's assignment:

You need to create a repository and maintain two branches, where:
    -  In branch_1 = push your child modules (resources).
    -  In branch_2 = push your root modules.

Then create your tool infrastructure setup taking reference of your infra architecture diagram with terraform IaC provisioned with best practices in such a way where you calling your child modules from VCS path not from local path. 

Then automate your infrastructure code with your Jenkins tool and create the infrastructure with one click job. Also manage, your tfstate file in S3, terrafom state locking using dynamodb
and your provider version throughout the code.

you will learn:
 - terraform backend 
 - terraform modules
 - terraform best practices
 - Jenkins 
 - Jenkinsfile

NOTE: 

1. Infra diagram should be your first priority and get validate by your buddies.
2. Terraform code should be done through Modules only which will be created by you.
3. Use Jenkinsfile for automation and the file would fetch from VCS.

--------------------------------(OPTIONAL PART)-------------------------------------
GOOD TO DO:

you need to create a directory structure in such a way that you will call only 2 modules in order to create your infrastructure.
 - Network Module
 - Application Module

Network Module includes:
 - vpc
 - subnets
 - route tables
 - igw
 - nat 
 - Nacl 

Application Module includes:
 - Application server resource
 - Load Balancer (if applicable)
 - Autoscaling group (if applicable)

kindly share your infra diagram here , don't move ahead without approval of your tool infra diagram, and get your infra diagram approved by your buddies. Strictly follow these points and I want everybody to make the architecture diagram.
Good Luck for your tool














