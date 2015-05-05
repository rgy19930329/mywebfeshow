运用了jdbc.properties

放弃使用数据库连接池
放弃了使用servlet

注意将配置web.xml文件中没用的东西删除干净
jetty与tomcat不同，有东西多余的话它会出现503错误！


break_record.html中采用jquery读取json格式的数据，降低了页面与数据之间的耦合，更加易于数据更新以及代码维护



break_record.json 单独使用Storage





