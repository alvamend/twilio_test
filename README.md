# README

Hello! This is a quick API that shows how to use Twilio gem on rails

* Ruby version: 3.3.1

To start, you can create an account on Twilio
<a href="https://www.twilio.com/login">Log in to Twilio</a>

Once you're logged in, you must have your ACCOUNT_SID and AUTH_TOKEN keys.
Make sure to store them in an .ENV file

To test, you can clone this repo and then run

```
rails db:create
rails db:migrate
```

Then, from postman, make a POST request to URL: "{{host}}/api/v1/users"

Body example:
```
{
  "user": {
    "name": "John Doe",
    "phone_number: "E164 format phone number"
  }
}
```
