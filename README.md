# 项目官网

[https://uestc-jee.github.io/SLMS](https://uestc-jee.github.io/SLMS/)

更新如下内容：

- 优化SQL语句效率
- 优化前端查询界面及查询方式，使其更加全面，对用户友好
- 更新邮箱验证码服务，增加了验证码有效时间
- 优化源代码结构，增强了规范性和可拓展性

# 前端
- 前端框架： layui
- 数据可视化框架： echarts
# 后端
- IOC容器： Spring
- 网框架： SpringMVC
- ORM框架： Mybatis
- 日志框架： Log4j
- 安全框架： Shiro

# 运行指南:
## 1：项目开发环境
- IDE： IntelliJ IDEA 2019.2 (Ultimate Edition)
- 项目构建工具： Maven 3.6.1
- 数据库： Mysql 8.0.17
- JDK版本： jdk 1.8.0
- Tomcat版本： Tomcat 9.0.22

## 2：数据库
- 系统管理员 Mardan/88888888
- 学生 2017221101025/123456



项目结构
```
SLMS
├── docs                                // 项目主页
├── pom.xml                             // maven依赖
├── README.md                           // readme
└── src                                 // 类源代码目录
    ├── main
    │   ├── java
    │   │   └── com
    │   │       └── uestc               // java代码目录
    │   │           ├── controller      // 控制层
    │   │           ├── dao             // 持久层
    │   │           ├── dto             // 传输对象
    │   │           ├── entity          // 实体类
    │   │           ├── interceptor     // 拦截器
    │   │           ├── log             // 日志管理
    │   │           ├── service         // 服务层
    │   │           │   └─ impl         // 服务层接口实现
    │   │           └── util            // 工具方法
    │   ├── resource                    // 资源文件目录
    │   │   ├── jdbc.properties         // jdbc连接数据库
    │   │   ├── log4j.properties        // log4j 日志输出
    │   │   ├── mapper                  // mybatis对dao接口的xml实现
    │   │   ├── mybatis-config.xml
    │   │   ├── SLMS.sql                //创建数据库mysql源码
    │   │   ├── spring-context.xml
    │   │   └── spring-mvc.xml
    │   └── webapp                      // tomcat前端文件目录
    │       ├── index.jsp
    │       ├── static
    │       │   ├── custom
    │       │   └── plugins
    │       └── WEB-INF
    │           ├── page
    │           └── web.xml
    └── test                            // 测试代码目录
        └── java
```