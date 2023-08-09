# AlibabaCloud Environment

## ossutil

- https://www.alibabacloud.com/help/en/oss/developer-reference/install-ossutil
- https://www.alibabacloud.com/help/en/oss/developer-reference/configure-ossutil

```bash
sudo -v ; curl https://gosspublic.alicdn.com/ossutil/install.sh | sudo bash

ossutil config

cat >> ~/.ossutilconfig <<EOL
[Credentials]
endpoint = oss-cn-hangzhou.aliyuncs.com
accessKeyID = LTAI4Fw2NbDUCV8zYUzA****
accessKeySecret = 67DLVBkH7EamOjy2W5RVAHUY9H****
EOL

# use config file
ossutl ls oss://example-bucket

# use Key Pair
ossutil -e oss-cn-hangzhou.aliyuncs.com -k 67DLVBkH7EamOjy2W5RVAHUY9H**** -t yourSecurityToken ls oss://example-bucket

# use STS
ossutil -e oss-cn-hangzhou.aliyuncs.com -i STS.LTAI4Fw2NbDUCV8zYUzA**** ls oss://example-bucket
```
