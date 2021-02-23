# GitLab
**使用Ubuntu架設GitLab**

**Ubuntu 版本：Ubuntu 20.04.2 LTS**

**附上可直接省略以下步驟程式腳本(使用```wget https://github.com/880831ian/GitLab/blob/main/GitLab.sh```下載後執行即可完成安裝)**

**也可以跟以下步驟一步一步來設定↓↓↓**

**資料來源**
* Git：https://backlog.com/git-tutorial/tw/intro/intro1_2.html
* GitLab架設：https://reurl.cc/1g1ydW

# GitLab 架設
**系統支援性**

**1. 先查詢要安裝的作業系統是否支援GitLab (本次使用Ubuntu來當作業系統)。**
```shell
https://about.gitlab.com/installation/
```
![image](https://github.com/880831ian/GitLab/blob/main/images/1.png)

**安裝需要插件**

**1. 因Git使用ssh需要安全性驗證，需要安裝openssh-server ca-certificates。**

**2. GitLab支援寄信服務，需要安裝postfix。**

```sh
sudo apt-get install net-tools openssh-server ca-certificates postfix tzdata -y
```
**3. 下載GitLab package server**

```sh
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
```
**4. 安裝GitLab package server**

```sh
sudo apt-get install gitlab-ce
```
**5. 配置GitLab的環境**

```sh
sudo gitlab-ctl reconfigure
```

`因GitLab預設為80 Port，若已被佔用，可以自行修改`

```sh
sudo vim /etc/gitlab/gitlab.rb
```
**找到external_url，修改為自己的url及Port**

![image](https://github.com/880831ian/GitLab/blob/main/images/1.png)



