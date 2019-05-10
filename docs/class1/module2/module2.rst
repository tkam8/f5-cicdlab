Module 2: Deploy Ubuntu Server
===========================

This Ubuntu server will be used as the Jenkins server. 
You can deploy this instance anywhere with Internet access. For this guide, we will deploy on AWS. 

Requirements for AWS deployment
------------------
- You will need an existing AWS VPC configured with Internet Gateway, Routes, Subnets, Security Group, and ssh key

Instructions:

#. Access AWS Marketplace from the EC2 console and search for keyword **ubuntu**. In this guide we will use the "Ubuntu 16.04 LTS - Xenial (HVM)" AMI image

#. Deploy into your existing VPC and access via SSH when completely booted


This completes deployment of the Ubuntu server.
