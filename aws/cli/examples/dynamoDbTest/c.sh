#!/bin/bash
source c
aws iam create-role \
  --role-name ${iamRoleName} \
  --assume-role-policy-document "${iamRoleTrustPolicyDoc}"
aws iam put-role-policy \
  --role-name ${iamRoleName} \
  --policy-name ${iamRolePermissionPolicyName} \
  --policy-document "${iamRolePermissionPolicyDoc}"
aws iot create-topic-rule \
  --rule-name ${iotRuleName} \
  --topic-rule-payload \
  "${iotRulePayloadDoc}"
