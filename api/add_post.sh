#!/bin/sh
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST --data '{"post":{"description":"Woot!","user_id":6}}'  http://localhost:3000/api/1/posts?auth_token=z0000000000000000000
