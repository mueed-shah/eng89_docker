# use nginx image
# lable it with your name
# copy the index from local to container
# declare to use port 80
# npm start

# from is the word to use the image
FROM nginx

# label it with our name
LABEL MAINTAINER=mueed

# copy data as index
COPY index.html /usr/share/nginx/html
# copies index.html to the nginx default index

# adding the port

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# commands from official image of nginx
