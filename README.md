地址: 192.168.3.2

用户名: root

密码: password

**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)
 

使用 GitHub Actions 构建 OpenWrt 的模板

## 用法

- 单击 [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) 按钮以创建新的存储库。 
- 生成 `.config` 文件使用 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) 源代码,您可以通过工作流文件中的环境变量进行更改
- 上传 `.config` 文件到GitHub存储库
- 选择 `Build OpenWrt` 在“Actions”页面上.
- 单击`Run workflow` 按钮
- 构建完成后，单击`Artifacts`按钮以下载二进制文件。

## Tips

- 创建可能需要很长时间才能创建`.config`文件并构建 OpenWrt 固件。因此，在创建存储库以构建自己的固件之前，您可以通过简单地搜索来检查其他人是否已经构建了满足您需求的存储库`Actions-Openwrt`在 GitHub 中 。 
- 将您构建的固件的一些元信息（例如固件架构和已安装的软件包）添加到您的仓库介绍中，这将节省其他人的时间。

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)

##### 关于Secrets、TOKEN的小知识


1. 首先需要获取 **Github Token**: [点击这里](https://github.com/settings/tokens/new) 获取,

 `Note`项填写一个名称,`Select scopes`不理解就**全部打勾**,操作完成后点击下方`Generate token`

2. 复制页面中生成的 **Token**,并保存到本地,**Token 只会显示一次!**

3. **Fork** 我的`small-package`仓库,然后进入你的`small-package`仓库进行之后的设置

4. 点击上方菜单中的`Settings`,依次点击`Secrets`-`New repository secret`

其中`Name`项填写`ACCESS_TOKEN`,然后将你的 **Token** 粘贴到`Value`项,完成后点击`Add secert`

* 对应`.github/workflows`目录下的`yml`工作流文件里的`ACCESS_TOKEN`名称（依据自己yml文件修改）

* 在仓库`Settings->Secrets`中添加 `SCKEY `可通过[Server酱](http://sc.ftqq.com) 推送编译结果到微信

* 在仓库`Settings->Secrets`中添加 `TELEGRAM_CHAT_ID, TELEGRAM_TOKEN `可推送编译结果到`Telegram Bot`
