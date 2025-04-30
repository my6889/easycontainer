使用方式：

1.修改postgresql.env中的密码

2.使用docker-compose启动容器



postgres容器环境变量，仅可设置POSTGRES_PASSWORD，POSTGRES_USER，POSTGRES_DB，POSTGRES_INITDB_ARGS，POSTGRES_INITDB_WALDIR，POSTGRES_HOST_AUTH_METHOD，PGDATA。其中仅有POSTGRES_PASSWORD是必需项，其它环境变量均为可选项。

详细含义参考：https://github.com/docker-library/docs/blob/master/postgres/README.md


如果容器启动后提示目录权限问题，可适当修改挂载目录的权限。

如果要设置shared_buffers、max_connections、timezone，请在持久化的postgresql.conf中修改后，并重启容器。

示例：

```
shared_buffers=512M
max_connections=300
timezone=Asia/Shanghai
```


