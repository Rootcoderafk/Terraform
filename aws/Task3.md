***Creating Instances***
We create 2 instances here web server 1  and web server 2 so that we can manage the load here and transfer the traffic

![EC2 Instances](./screenshots/Screenshot%20from%202025-05-25%2021-50-22.png)

***Target Group***
Now we assign the ec2 instances to two different target groups so that it automatecally switch 

We name it Target Group 1 and Target Group 2

***Template***
Now we create a template so that we can add it to auto-scaling group

![Template](./screenshots/Screenshot%20from%202025-05-25%2022-17-29.png)

***Auto-Scaling Group***
Now to manage the instances we add ASG attach it with my 2 Target Group and a template

![ASG](./screenshots/Screenshot%20from%202025-05-25%2022-19-21.png)

***CloudWatch***
Now to monitor our usage we use the cloudwatch on our ec2 so that the CPU utilization stay in limit.. The ASG would keep on creating instances if our CPU Untilazation is more than the required limit


![Cloudwatch](./screenshots/Screenshot%20from%202025-05-26%2009-25-34.png)