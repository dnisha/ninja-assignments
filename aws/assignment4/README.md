=============
Assingment-4
=============
## Infrastructure as a Code
### Task Description 

- Create the following resources using terraform resource block :
    - Create 1 VPC 
        - eg : `ninja-vpc-01`
    - Create 4 Subnet
        - 2 public subnet
            - eg : `ninja-pub-sub-01/02`
        - 2 private subnet
            - eg : `ninja-priv-sub-01/02`
    - Create instances in it ( bastion and private instance)
    - Create 1 IGW
        - eg : `ninja-igw-01`
    - Create 1 NAT 
        - eg : `ninja-nat-01`
    - Create 2 Route Table
        - 1 for public subnet
            - eg : `ninja-route-pub-01/02`
        - 1 for private subnet
            - eg : `ninja-route-priv-01/02`

**Note: Make maximum use of variables and output files**