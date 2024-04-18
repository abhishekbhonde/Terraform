# TerraWeek Day 2


### Task 1: Familiarize yourself with HCL syntax used in Terraform

- Learn about HCL blocks, parameters, and arguments
  Answer: HCL is a configuration language that is used to write configuration files for terraform.

  Genearal Syntax for writing hcl: 



    ```
    <BLOCK TYPE> "<Parameters>" {
        <Arguments>
    }
    ```

- Lets write a simple terrafomr code in hcl for resource creation for aws_instacne

```
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
  ```
  provider "aws" {
    region = "<region>"
  }
  ```


### Task 2: Understand variables, data types, and expressions in HCL

 - Create a variables.tf file and define a variable

    All the variables that we are going to use in our terraform are stored in separate file call variables.tf(you can rename it as you want).

    ```
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
  
    ```
    This is main.tf file

    resource "aws_ec2_instance" "my_instance"{}
