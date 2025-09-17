使用方式：直接使用docker-compose启动容器

关于备份：

1.在mysqldump.sh文件中修改MySQL的密码。  

2.修改crontab.config文件中的XXX为绝对目录位置。  

3.把crontab.config文件中的两行复制到系统定时任务配置中。 