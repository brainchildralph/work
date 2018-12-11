#!/bin/bash
source c
aws dynamodb create-table \
  --table-name ${dbTableName} \
  --attribute-definitions "${dbAttrDefinitions}" \
  --key-schema "${dbKeySchema}" \
   --provisioned-throughput "${dbProvisionedThroughput}"
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
