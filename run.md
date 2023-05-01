# step process for running application

# 1
docker build -t <image-name> .
 
# 2
docker run -dp 8080:8080 <image-name>
