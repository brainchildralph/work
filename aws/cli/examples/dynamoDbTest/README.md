### Create/Delete AWS IoT Rule for putting item into DynamoDB

**Create IAM Role and Iot Rule**
```
$ ./c.sh
```
**Delete IAM Role and Iot Rule**
```
$ ./d.sh
```
**Configuration File**
```
$ cat ./c
```
**Publish data to AWS**
```
$ ./t.sh
```

### **After run create script, what you will see on AWS.**

- The table `dbTestTable` will be created on AWS DynamoDB console. 
- The role `dbTestRole` will be created on AWS IAM console. 
- The action `dbTestRule` will be created on AWS IoT Core console. 

