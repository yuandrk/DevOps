```aws lambda update-function-configuration \
--function-name dictate-function \
--environment Variables="{MP3_BUCKET_NAME=$apiBucket, TABLE_NAME=$notesTable}"
```


```
aws lambda update-function-configuration \
--function-name dictate-function \
--handler app.lambda_handler

```

invoke labmda 
```
aws lambda invoke \
--function-name dictate-function \
--payload fileb://event.json response.txt
```