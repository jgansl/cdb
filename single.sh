docker run -d \
--name=cdb \
--hostname=cdb \
-p 26257:26257 -p 8080:8080  \
-v "./data:/cockroach/cockroach-data"  \
cockroachdb/cockroach:v21.2.3 start \
--insecure
#--join=roach1,roach2,roach3
# --net=roachnet \