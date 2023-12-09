# Create AWS Route53 Hosted Zone with your own Domain and add new DNS Records

## 1. Create .env file in the directory

```c
my_hosted_zone_name="<Your-Hosted-Zone-Name>"
```

- Replace `<Your-Hosted-Zone-Name>` to your desire hosted zone name.

## 2. Use terminal(in `"AWS_Route53_Hosted_Zone/"` directory) to create Hosted Zone by following command:

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
