# Create AWS Route53 Hosted Zone with your own Domain and add new DNS Records

## Prerequisites

- AWS Account

- Your own Domain

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### AWS Access key:

1. Use AWS console to get into

   > IAM / Users / `<Your-Account>` / Security credentials / Access keys > `Create access key`

   - Command Line Interface (CLI)

     > Next

   - Create access key

   > Create

   - Save Access keys as a .CSV file

2. Use terminal to login AWS CLI using Access key by following commands:

   ```bash
   aws configure
   # AWS Access Key ID [...]: <Your-Access-key-ID>
   # AWS Secret Access Key [...]: <Your-Secret-access-key>
   # Default region name [...]: <Your-Cluster-Region>
   # Default output format [...]: <json/yaml/...>

   aws sts get-caller-identity
   # Verify your AWS CLI account
   ```

> Done

- Make .sh file exacutable(in `"AWS_Route53_Hosted_Zone_with_DNS_Records/"` directory) :
```bash
chmod +x create_hosted_zone.sh
```


## 1. Create .env file(in `"AWS_Route53_Hosted_Zone_with_DNS_Records/"` directory)

```c
my_hosted_zone_name="<Your-Hosted-Zone-Name>"
```

- Replace `<Your-Hosted-Zone-Name>` to your desire hosted zone name.

## 2. Use terminal(in `"AWS_Route53_Hosted_Zone_with_DNS_Records/"` directory) to create Hosted Zone by following command:

```bash
./create_hosted_zone.sh
```

## 3. Add new DNS Records in your Domain from provider(ex. Godaddy)

### Total 4 DNS Records:

type: `NS` \
Name: `<Your-Records-Name>` \

---

Value: \
get into AWS console >>

> Route 53 / Hosted zones / `<Your-Hosted-Zone>`

---

`Records`

`Type: NS` `Value/Route traffic to`

`<Value1>`

`<Value2>`

`<Value3>`

`<Value4>`

- note: Pick one Value for one Record, and make sure add all Values in your DNS Records

---

TTL: 1/2 Hour (Default)

> Save All Records

## 4. URL for Website & Wrap up

get into AWS console:

> Route 53 / Hosted zones / `<Your-Hosted-Zone>`

`Records`

=> `Create record`

---

Record name: `<Your-Record-Name>` \
Record type: `A` (Default) \
Alias: `on` \
Route traffic to: \
`Alias to Application and Classic Load Balancer` \
`Choose region` \
`<Your-Load-Balancer>` \
Routing policy: `Simple routing`
Evaluate target health: `on` (Default)

> Create Records

# Complete!!! Now you can go to browser check your URL

By Leon Chiang 09/12/2023
