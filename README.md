# lambda-with-c

## Overview

- Test program using AWS Lambda, written in C language

## Requirements

- Docker
  - To compile binary
  - It is needed to run `docker` command without `sudo`
- Bash
- AWS CLI

## Usage

```
# 1. Compile
$ ./build.sh

# 2. Create a lambda function
$ aws lambda create-function --function-name lambda-with-c \
    --zip-file fileb://lambda_function.zip --handler lambda_function.handler \
    --runtime provided --role arn:aws:iam::***:role/role_name

# 3. Test the function on your aws managed console or cli
## cli version
$ aws lambda invoke --function-name lambda-with-c \
    --invocation-type RequestResponse \
    --payload "$(cat sample/events.json)" \
    /tmp/lambda-with-c.log
{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
## lambda outputs
$ cat /tmp/lambda-with-c.log 
{
    "test1": "value1",
    "test2": "value2"
}
```

## Tips

### Update Lambda
```
$ ./build.sh
$ aws lambda update-function-code \
    --function-name lambda-with-c \
    --zip-file fileb://lambda_function.zip
```

