# LeeSite 项目骨架生成工具

基于 LeeSite 的项目骨架生成工具，可以快速的搭建一个将 LeeSite 作为依赖的 Java Web 项目

## Installation and Getting Started

* 在使用工具之前请先安装 [LeeSite](https://github.com/topsale/leesite)
* 切换 LeeSite 分支为 1.1.0-RELEASE
* 将 LeeSite 安装到本地仓库

### Step 1

下载源码

git clone https://github.com/topsale/leesite-archetype-webapp.git

### Step 2

切换分支

git checkout 1.0.4-RELEASE

### Step 3

安装到本地仓库

mvn clean install

### Step 4

进入您的工作目录并生成项目骨架

```
mvn archetype:generate -DarchetypeGroupId=com.funtl.leesite -DarchetypeArtifactId=leesite-archetype-webapp -DarchetypeVersion=1.0.3-RELEASE -DgroupId=<your groupId> -DartifactId=<your artifactId> -Dversion=<your version> -DleesiteVersion=<leesiteVersion> -DarchetypeCatalog=local
```

参数说明：

* archetypeGroupId：骨架生成项目的 GroupId
* archetypeArtifactId：骨架生成项目的 ArtifactId
* archetypeVersion：骨架生成项目的版本
* groupId：你自己项目的 GroupId
* artifactId：你自己项目的 ArtifactId
* version：你自己项目的版本
* leesiteVersion：选择要基于哪个 LeeSite 的版本来生成项目骨架

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

修改数据源

修改 module/src/main/resources/profiles/development/leesite.properties 文件，替换为自己的数据源

### Step 6
* 将项目导入 IDEA
* 刷新 Maven Project
* 创建 Tomcat Server
* 直接启动即可使用

## Getting help
**Email** : topsale@vip.qq.com

## License
LeeSite is Open Source software released under the [Apache 2.0 license.](http://www.apache.org/licenses/LICENSE-2.0.html)