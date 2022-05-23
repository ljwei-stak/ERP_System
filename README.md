# python-Django-MySQL-ERP
该系统是一款基于Django开发的ERP管理软件，包含常用的销售管理、采购管理、库存管理、组织管理等，支持按项目归集费用，支持工作流审批，支持采购单、报价单的批量导入。


## 数据库配置

数据库配置项在mis/settings.py文件中
在88-96行为Mysql数据库配置
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',#MYSQL类型数据库，Python会依赖MySQL的驱动器
        'HOST': 'localhost',#数据库主机地址
        'NAME': 'mis',#数据库名称
        'USER': 'root',#数据库用户名（建议不要加入root敢死队）
        'PASSWORD': 'root',#数据库密码
    }
}
```

## 导入数据库
> mysql -uroot -proot mis < Install/mis.sql

## 运行测试服务器
> python manage.py runserver

## 修改管理员账户密码
```
C:\Django-ERP>python manage.py changepassword admin


