#!/bin/bash
echo -ne "Password?\n\n"
read password
# echo "message" | openssl enc -aes-256-cbc -a -pass pass:$password
# echo "encmessage" | openssl enc -aes-256-cbc -a -d -pass pass:$password
AWS_ACCESS_KEY_ID_enc="U2FsdGVkX18803zZwWPG+/OIInxvN/dFH+U1CD/CrnrB6y1G3nNJnUePrK0Bsqdd\n"
AWS_SECRET_ACCESS_KEY_enc="U2FsdGVkX1/9Mo3q9tjbylVDScORJbI+Tx3W+XOVBqY5Q5d8YuqVxvN+/XiAHP1E\nT2wSYtjyTU+tWbA8Ws0W4w=="
export AWS_ACCESS_KEY_ID=$(echo -ne ${AWS_ACCESS_KEY_ID_enc} | openssl enc -aes-256-cbc -a -d -pass pass:$password)
export AWS_SECRET_ACCESS_KEY=$(echo -ne ${AWS_SECRET_ACCESS_KEY_enc} | openssl enc -aes-256-cbc -a -d -pass pass:$password)
export AWS_DEFAULT_REGION=us-west-2
export AWS_DEFAULT_OUTPUT=json
region=$AWS_DEFAULT_REGION
accountId=$(echo -ne "U2FsdGVkX19Re0fN4Q6AeRIJaVv38EqqnLF46EbKOgQ=\n" | openssl enc -aes-256-cbc -a -d -pass pass:$password)
aws iot list-things
