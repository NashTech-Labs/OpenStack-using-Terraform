Terraform is an infrastructure as code (IaC) tool that allows you to build, change and version infrastructure safely and efficiently.

To run the terraform script-

terraform apply main.tf

But if you want to set run time variables and not use the default one for the counter start use the following command-

terraform apply main.tf -var="kfk_count={{number of instance you want}}" -var="counter_start={{counter from where you want the instance numbers to start}}"



With this terraform script you wan have x number of instances and can start the counter number from y, where x is kfk_count and y is counter_start
