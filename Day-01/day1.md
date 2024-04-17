### Interview Questions:

1. **What is Terraform and how can it help you manage infrastructure as code?**

   Answer: Terrafrom is a open source tool that allows you to provision your infrastructure using code. The code that you are going to write while provisining your infrastructure is developed by Hashicorp. The code you write is called HCL(hashicorp configuration language). 

2. **Why do we need Terraform and how does it simplify infrastructure provisioning?**

   Answer: We need terraform becuase it allows us to provision our IAC. Traditional methods includes all these manual works which may include human error resulting in downtime. Terraform simplifies all these things.

   ```Terraform provides various features like
         1. Multicloud support
         2. Automation
         3. Infrastructure as code
         4. Plan and apply
         5. State Management
         6. Modules
         7. Versioning
         8. Consistency
    ```

3. **How can you install Terraform and set up the environment for AWS, Azure, or GCP?**

   Answer: I will tell you how to install terraform on aws. Other two cloud also have same procedure. 
       1. Create an ec2 instance on aws ( Instance should be type of linux)
       2. Run following commands
          ```
            A. sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

            B. wget -O- https://apt.releases.hashicorp.com/gpg | \
               gpg --dearmor | \
               sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

            C. gpg --no-default-keyring \
               --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
               --fingerprint

            D. echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
               https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
               sudo tee /etc/apt/sources.list.d/hashicorp.list

            E. sudo apt-get update && sudo apt-get install terraform```: