# PKUWalker

Allow you walk when others run

## Principle

PKU Runner的数据储存于`/data/data/cn.edu.pku.pkurunner/files/data.db`.
修改这些数据,即可制造跑步记录.为了使未root玩家也能使用PKUWalker,需对App做一些修改.

## Usage

首先下载`build/pkurunner-v1.2.4_res.apk`,并登录你的账号.
然后在`设置/破解功能`中选择导出`data.db`.
生成伪造数据,将被修改过的`data.db`导入App.如果无效果,随意建立临时账户以进入设置,多导入几次即可.
导入后App由于并不完善,会停止运行(白屏),可以手动清除活动并再次进入.
若导入成功应该可以在`旧账号`中看到之前已经登录的账号.此时通过PKU Runner原有的上传功能上传记录即可.

导出`data.db`的功能自然也可以用作备份跑步记录.

## Make

需要`apktool`. 在本目录下执行

```shell
    make
```
即可.由于`pkurunner.patch`是随手糊出来的,建议直接使用`product/pkurunner-v1.2.4_res.apk`.
如果想为本项目创建其他的patch,请取消注释`makefile`最后的`make patch`命令.

## Generate record

在`generator`目录下执行`generator.py`即可看到用法.跟随提示输入即可.在只有一个用户时不用选择用户.输入时间时直接按`enter`使用当前时间.输入其他参数时按`enter`使用默认值.

## Thanks

本项目在生成伪造数据部分使用了来自[PKURunningHelper, zhongxinghong](https://github.com/zhongxinghong/PKURunningHelper)的代码.在此提出感谢.因此`generator/fake.py`应当使用与`PKURunningHelper`相同的许可.除此之外的代码均使用本项目下`LICENSE`文件的许可.

## Q&A

Q:
    为什么在已安装未修改的PKU Runner的情况下无法安装此项目内的PKU Runner?
A:
    修改过的PKU Runner与原版本包名相同但应用签名不同.Android由于安全问题,会阻止新包的安装.

Q:
    为什么导出`data.db`再导回去后登录会失效,从而回到登录界面?
A:
    第一次登录后需要彻底退出PKU Runner,使其将登录信息写入`data.db`.随后再次打开PKU Runner方可导出.