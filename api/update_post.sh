#!/bin/sh
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X PUT --data '{"post":{"description":"Woot! Woot!"}}'  http://localhost:3000/api/1/posts/1001?auth_token=z0000000000000000000
