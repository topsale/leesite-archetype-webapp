# LeeSite 项目骨架生成工具

基于 LeeSite 的项目骨架生成工具，可以快速的搭建一个将 LeeSite 作为依赖的 Java Web 项目

## Installation and Getting Started

* 在使用工具之前请先安装 [LeeSite](https://github.com/topsale/leesite)
* 切换 LeeSite 分支为 1.0.2-RELEASE
* 将 LeeSite 安装到本地仓库

### Step 1

下载源码

git clone https://github.com/topsale/leesite-archetype-webapp.git

### Step 2

切换分支

git checkout 1.0.2-RELEASE

### Step 3

安装到本地仓库

mvn clean install

### Step 4

进入您的工作目录并生成项目骨架

```
mvn archetype:generate -DarchetypeGroupId=com.funtl.leesite -DarchetypeArtifactId=leesite-archetype-webapp -DarchetypeVersion=1.0.2-RELEASE -DgroupId=<your groupId> -DartifactId=<your artifactId> -Dversion=<your version> -DarchetypeCatalog=local
```

生成的目录结构

```
│  .gitattributes
│  .gitignore
│  pom.xml
│
├─database
│  │  db-init.properties
│  │  pom.xml
│  │
│  └─db
│      │  db-init.bat
│      │
│      └─init
│              leesite_data.xls
│              leesite_mysql.sql
│
├─dependencies
│  │  pom.xml
│  │
│  └─src
│      └─main
│          └─xslt
│                  single-project.xsl
│
├─module
│  │  pom.xml
│  │
│  └─src
│      └─main
│          └─resources
│              ├─cache
│              │      ehcache-local.xml
│              │
│              └─profiles
│                  ├─development
│                  │      leesite.properties
│                  │      log4j.properties
│                  │
│                  ├─production
│                  │      leesite.properties
│                  │      log4j.properties
│                  │
│                  └─testing
│                          leesite.properties
│                          log4j.properties
│
└─parent
    │  pom.xml
    │
    └─src
        └─checkstyle
                checkstyle-header.txt
                checkstyle-suppressions.xml
                checkstyle.xml
```

### Step 5

* 将项目导入 IDEA
* 刷新 Maven Project
* 创建 Tomcat Server
* 无需任何修改直接启动即可使用

## Getting help
**Email** : topsale@vip.qq.com

## License
LeeSite is Open Source software released under the [Apache 2.0 license.](http://www.apache.org/licenses/LICENSE-2.0.html)