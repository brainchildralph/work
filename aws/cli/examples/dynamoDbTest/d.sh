#!/bin/bash
source c
aws iot delete-topic-rule \
  --rule-name ${iotRuleName}
aws iam delete-role-policy \
  --role-name ${iamRoleName} \
  --policy-name ${iamRolePermissionPolicyName}
aws iam delete-role \
  --role-name ${iamRoleName}
