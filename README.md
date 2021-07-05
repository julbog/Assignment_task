# Assignment_task

## Intro
The task was using Ansible:
  1. install database client
  2. create table, generate sample data in database
  3. execute code to retrieve subset of generated data in CVS format
  4. store gathered data on ansible server file /tmp/gathered_data.csv  
  
## Solution
In my implementation I use Oracle Cloud Database and Ubuntu VM as APP Server and Ansible Server (to avoid network setup).
Ansible Server is called appserver as if it was remote.

## Setup
The solution requires following scripts from repo:
  - create_schema.sql
  - create_table.sql
  - create_procedure_generating_data.sql
  - generate_data.sql
  - retrieve_subset.sql
 And two linux client packages from repository. 
In my case I placed all files into /home/julia/Downloads on "Ansible Server".
 
## Run
To run the solution you need to execute following commands from the folder where scripts are located:
  1. ansible-playbook playbook_execute_scripts.yml
  2. ansible-playbook playbook_execute_scripts.yml --extra-vars "oracle_username=sys oracle_pwd=######"
  3. ansible-playbook playbook_retrieve_data.yml
    
## Conclusion
As the output you would get gathered_data.csv in /tmp folder.
