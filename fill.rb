require 'net/http'
url = 'http://app.foodrunners.org/donations'
uri = URI(url)

donation_json = {donation: {
  companyName: "sorry just a test",
  contactEmail: "compiledwrong@gmail.com",
  contactName: "sorry just a test",
  contactPhone: "8188004307",
  fits: 0,
  foodDescription: "sorry just a test",
  individual: true,
  notes: "sorry just a test",
  pickupAddress: "123 Nowhere",
  pickupDate: "2015-08-05 18:58:37",
  pickupZip: "94110",
  quantity: 10,
  raw: true,
  submitted: "2015-08-04 18:58:37"
  }}
res = Net::HTTP.post_form(uri, donation_json)
puts res.body

# xhr

# donation: {companyName: "sorry just a test", contactName: "sorry just a test",…}
# companyName: "sorry just a test"
# contactEmail: "compiledwrong@gmail.com"
# contactName: "sorry just a test"
# contactPhone: "8188004307"
# fits: 0
# foodDescription: "sorry just a test"
# individual: true
# notes: "sorry just a test"
# pickupAddress: "123 Nowhere"
# pickupDate: "2015-08-05 18:58:37"
# pickupZip: "94110"
# quantity: 10
# raw: true
# submitted: "2015-08-04 18:58:37"

# Remote Address:83.223.106.8:80
# Request URL:http://api.foodrunners.org/donations
# Request Method:POST
# Status Code:200 OK
# Response Headers
# view source
# Access-Control-Allow-Headers:Origin, X-Requested-With, Content-Type, Accept, api_key
# Access-Control-Allow-Methods:GET, POST, PUT, DELETE, OPTIONS, HEAD
# Access-Control-Allow-Origin:*
# Connection:close
# Content-Type:application/json
# Date:Wed, 05 Aug 2015 01:58:38 GMT
# Server:Apache
# Transfer-Encoding:chunked
# X-Powered-By:PHP/5.3.29
# Request Headers
# view source
# Accept:application/json, text/javascript, */*; q=0.01
# Accept-Encoding:gzip, deflate
# Accept-Language:en-US,en;q=0.8
# Cache-Control:no-cache
# Connection:keep-alive
# Content-Length:388
# Content-Type:application/json; charset=UTF-8
# Host:api.foodrunners.org
# Origin:http://app.foodrunners.org
# Pragma:no-cache
# Referer:http://app.foodrunners.org/
# User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36
# Request Payload
# view source
# {donation: {companyName: "sorry just a test", contactName: "sorry just a test",…}}
# Name
# donations
# loading.gif
# donations
# connection.php
# 4 requests ❘ 11.3 KB transferred
# .
# http://app.foodrunners.org/phonegap.js Failed to load resource: the server responded with a status of 404 (Not Found)
# .
# donation: {companyName: "sorry just a test", contactName: "sorry just a test",…}
# companyName: "sorry just a test"
# contactEmail: "compiledwrong@gmail.com"
# contactName: "sorry just a test"
# contactPhone: "8188004307"
# fits: 0
# foodDescription: "sorry just a test"
# individual: true
# notes: "sorry just a test"
# pickupAddress: "123 Nowhere"
# pickupDate: "2015-08-05 18:58:37"
# pickupZip: "94110"
# quantity: 10
# raw: true
# submitted: "2015-08-04 18:58:37"


# X-Powered-By:PHP/5.3.29
# Request Headers
# view source
# Accept:application/json, text/javascript, */*; q=0.01
# Accept-Encoding:gzip, deflate
# Accept-Language:en-US,en;q=0.8
# Cache-Control:no-cache
# Connection:keep-alive
# Content-Length:349
# Content-Type:application/json; charset=UTF-8
# Host:api.foodrunners.org
# Origin:http://app.foodrunners.org
# Pragma:no-cache
# Referer:http://app.foodrunners.org/
# User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36
