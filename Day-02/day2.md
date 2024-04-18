# TerraWeek Day 2


### Task 1: Familiarize yourself with HCL syntax used in Terraform

- Learn about HCL blocks, parameters, and arguments
  Answer: HCL is a configuration language that is used to write configuration files for terraform.

  Genearal Syntax for writing hcl: 



    ```hcl
    <BLOCK TYPE> "<Parameters>" {
        <Arguments>
    }
    ```

- Lets write a simple terrafomr code in hcl for resource creation for aws_instacne

```hcl
resource "aws_ec2_instance" "my_instance" {
        ami = <ami_id>
        instance_type = "t2.micro"
}

```

- for the above code:
    - `resource` is a block type
    - `aws_ec2_instance` is a parameter
    - `my_instance` is a argument
    - `ami` and `instance_type` are arguments
  


 - for creating instance using above code you need to write provider code also.
  ```hcl
  provider "aws" {
    region = "<region>"
  }
  ```


### Task 2: Understand variables, data types, and expressions in HCL

 - Create a variables.tf file and define a variable

    All the variables that we are going to use in our terraform are stored in separate file call variables.tf(you can rename it as you want).

    ```hcl
   - Lets write a variables.tf file for creating aws_instance.
     
        variable "my_ami"{_
            type=string
            description="This is ami_id for creating ec2 instance"
        }
        variable "instance_type"{
            type=string
            descripton="This is ec2 instance type"
        }
        variable "instance_name"{
            type=string
            description="This is the name of ec2 instance"
        }
   ```

 -  let's use above variables.tf file for creating ec2 instance in main.tf 
  
    ```hcl
    This is main.tf file
    
    resource "aws_ec2_instance" "my_instance"{
            ami = var.ami  /// var is a keyword which is used to access the variables.
            type = var.instance_type

            tags = {
                Name = var.instance_name
            }
    }

    ```
### Task 3: Practice writing Terraform configurations using HCL syntax

- Lets write configuration for creating docker container which pulls image from dockerhub.
  
  ```hcl
  - provider.tf

    terraform {
         required_providers {
             docker = {
               source = "kreuzwerker/docker"
               version = "3.0.2"
             }
        }
    }

  ```

  ```hcl
  - main.tf
    // pull image
    resource "docker_image""node_todo_image" {
        name: "abhishekbhonde/node-app" // copy the name of image from dockerhub 
        keep_locally = false   // delete image after downloading
    }
    
    //



  ```


