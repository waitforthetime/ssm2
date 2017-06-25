# SSM整合
* spring（4.3.8.RELEASE）+ springmvc（4.3.8.RELEASE）+ mybatis（3.4.4）

# 概述
* 只是简单的完成了mybatis的整入，实现数据库查询而已。

# 整合流程
   1. 实现springMvc，这一步主要功能点，能够处理http请求，并且返回数据能够被视图正常渲染展示
   2. 实现mybatis，这一步主要功能点，配置mybatis数据源，实体别名，mapper扫描，能够完成数据库操作。


# 遇到的问题
   1. 整合springMvc时，jstl和el表达式取不到值   
    问题原因：本项目使用的时servlet3.0，web.xml中web-app使用的版本是2.5
    解决方案：web-app改使用3.0版本
   2. 实现mybatis时，运行报错Invalid bound statement (not found)
    问题原因：idea没有将mapper包下的xml自动和class文件放一下
    解决方案：在pom中，强制将xml文件在编译时和class文件放一起
   3. 实现mybatis时，运行报错You must configure either the server or JDBC driver (via the serverTimezone
    问题原因：本项目使用的是mysql6.0.6，配置url时没有指定serverTimezone，而，该版本时必须指定该参数的
    解决方案：在配置数据库url时，加上serverTimezone参数，并设值
   4. 历史遗留问题
    这是我第二次整合ssm，第一次整合只能算成功一半，主要的问题是，视图无法渲染jsp页面（返回jsp页面时，直接显示的时jsp源码）
     问题原因：在开发过程中，我将web由2.0转成3.0，没有对2.0时代的jsp进行处理。因为存在2.0时代的jsp导致所有jsp渲染失败
     解决方案：将jsp中0不兼容的元素去掉（我当时是去掉了对html定义的dtd元素）