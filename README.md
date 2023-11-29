## 本项目实现的最终作用是基于JSP实现小型供货销售存储管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 会员管理
 - 供货管理
 - 单位管理
 - 员工管理
 - 商品管理
 - 管理员登录
 - 类别管理
 - 系统管理
### 第2个角色为用户角色，实现了如下功能：
 - 商品管理
 - 查看收银
 - 用户管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** xxjxcsys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [category](#category) | 分类表 |
| [product](#product) | 商品信息表 |
| [provider](#provider) |  |
| [sale](#sale) |  |
| [saleitem](#saleitem) |  |
| [save](#save) |  |
| [stock](#stock) |  |
| [unit](#unit) |  |
| [user](#user) | 用户表 |
| [vip](#vip) |  |

**表名：** <a id="category">category</a>

**说明：** 分类表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | cid |   int   | 10 |   0    |    N     |  Y   |       | 分类ID  |
|  2   | cname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 分类名称  |

**表名：** <a id="product">product</a>

**说明：** 商品信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | pid |   varchar   | 255 |   0    |    N     |  Y   |       |   |
|  2   | cid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 分类ID  |
|  3   | pname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品名称  |
|  4   | pspec |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  6   | pminNumber |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | salePrice |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |
|  8   | vipPrice |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |
|  9   | pamount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  10   | pic |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 图片  |

**表名：** <a id="provider">provider</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | pid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | pname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品名称  |
|  3   | pphone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | paddress |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | plinkman |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="sale">sale</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | sid |   varchar   | 255 |   0    |    N     |  Y   |       |   |
|  2   | vid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | stime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  4   | stotal |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |
|  5   | scount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | uid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="saleitem">saleitem</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | sid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | saleId |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | scount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | sprice |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |

**表名：** <a id="save">save</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | sid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | vid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | stime |   date   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | smoney |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |
|  5   | uid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="stock">stock</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | sid |   varchar   | 255 |   0    |    N     |  Y   |       |   |
|  2   | productid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品ID  |
|  3   | providerId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | stime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | samount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | sprice |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |

**表名：** <a id="unit">unit</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | uid |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |

**表名：** <a id="user">user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | uid |   varchar   | 255 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | upassword |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  4   | urole |   int   | 10 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="vip">vip</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | vid |   varchar   | 255 |   0    |    N     |  Y   |       |   |
|  2   | vname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | vphone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | vsum |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |
|  5   | vscore |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | vcount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | vrate |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |
|  8   | vbirthday |   date   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | vbalance |   float   | 13 |   2    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
