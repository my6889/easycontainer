使用方式：

1.修改redis.conf  
主要修改redis认证密码，其它配置按需修改

2.修改sentinel.conf  
修改`sentinel auth-pass`一行，把默认的foobar修改为刚才设置的redis认证密码即可

3.启动服务  
使用docker-compose启动服务