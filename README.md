## 物业管理系统

**开发工具：Eclipse**

**数据库：MySQL**

**数据库可视化界面：sqlyog**

### 1.1注册登录界面

![注册界面](README.assets/注册界面.png)

**（1）在注册界面，对每个输入框进行了判空处理，注册的名称是唯一的，也就是说不能重复注册相同名字的账号，如果名称相同，则会弹出提示：用户名重复，并且不会存入数据库tb_user表中,若注册成功会直接跳转到登录界面，login.jsp**

![登录](README.assets/登录-1641126681050.png)

**（2）在登录界面中，每个输入框也做了判空处理，当用户提交表单后，数据库会查找用户名与密码是否匹配，匹配成功则进入主页面，匹配失败无法登录，登录按钮底下设置了忘记密码的设置**

![修改密码](README.assets/修改密码.png)

**（3）修改密码部分，通过查找唯一的用户名来修改密码，实现对数据库的修改功能，如果不存在该用户会弹出用户不存在的提示框；输入的两次密码进行了比较，输入的两次密码不一致会弹出提示，当数据库中存在该用户，并且两次密码一致会成功修改并跳转到登录界面**

### 1.2主页面

![index主界面](README.assets/index主界面.png)

**（4）主界面index.jsp：登录成功后，左上角会获取到当前登录的用户名，左边为侧边栏菜单，有两个下拉列表：用户管理；费用项目设置；上方为搜索框，可以通过输入物业费名称进行搜索并显示**

![添加用户信息](README.assets/添加用户信息.png)

**（5）添加用户信息界面（AddUser.jsp）：这一界面用来录入用户信息，输入框也进行了判空处理，因为考虑到同名的业主存在的情况，所以通过用户名和住址来判断是否是同一个人，如果用户名和住址与数据库tb_usermessage中的数据相同，那么无法正确添加并且会提示已存在相同用户；若添加成功则会直接跳转到显示用户信息界面**

![用户信息表](README.assets/用户信息表.png)

**（6）用户信息表（usershow.jsp）:这一界面用于显示用户信息表，通过AdduserServlet.java文件，判断action==list则执行取出数据库信息以数组储存，并将数据传到前端，在前端页面使用${userList}来接住数组，用foreach语句来逐条显示用户信息**

![添加物业费用信息](README.assets/添加物业费用信息.png)

**（7）添加物业费用信息页面（AddItem.jsp）：和添加用户信息表功能类似，这里不赘述，区别在于此处的表单添加了action=add值，连接到AdditemServlet，执行对应的分支语句，将费用项目添加到数据库中，添加成功后跳转到显示页面**

![显示物业费用信息界面](README.assets/显示物业费用信息界面.png)

**（8）显示物业费用信息界面（pay-item.jsp）：显示方式和用户信息显示界面类似，每一条信息后面会有一个“删除”按钮，点击删除后会弹出提示框：是否确定删除该条信息?点击确定，那么会通过该条信息的唯一的id删除数据库中的数据，并显示删除后的列表信息；点击上面的表头，可以实现对信息的倒序或正序显示**

![搜索框](README.assets/搜索框.png)



**（9）搜索![搜索结果展示](README.assets/搜索结果展示.png)展示（Search_show.jsp）：输入搜索的名称，回车或点击“GO”那么会显示出对应的信息，此处我们输入垃圾费作为展示，搜索后会显示出所有名称为垃圾费的物业费用项目**

### 1.3前端

![前端](README.assets/前端.png)

**在右边设置了一个浮标，可以给页面换颜色，选择你喜欢的界面**