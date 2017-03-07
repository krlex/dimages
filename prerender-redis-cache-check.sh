if grep -q "prerender-redis-cache" /prerender/server.js
    then

     echo "prerender-redis-cache exist";

    else

     sed -i '9 i\server.use(require('\''prerender-redis-cache'\''));' /prerender/server.js
fi
