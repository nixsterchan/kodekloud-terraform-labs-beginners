Given that conflicts can arise during the collaboration between multiple developers for a given terraform project, and that version controllers are not suitable for tracking of state files, a remote backend with cloud services such as AWS or Azure can be used for the setup of proper state tracking everytime a one of the developers does a terraform apply command.


1. S3 Bucket
Stores the terraform state file

2. DynamoDB table
Implement State Locking and consistency checks