# GitLab
**使用Ubuntu架設GitLab**

**Ubuntu 版本：Ubuntu 20.04.2 LTS**

**附上可直接省略以下步驟程式腳本(使用wget )**

**資料來源**
* Git：https://backlog.com/git-tutorial/tw/intro/intro1_2.html
* GitLab架設：https://reurl.cc/1g1ydW

# GitLab 架設
**系統支援性**

**1. 先查詢要安裝的作業系統是否支援GitLab (本次使用Ubuntu來當作業系統)。**
```
https://about.gitlab.com/installation/
```
![image](https://github.com/880831ian/GitLab/blob/main/images/1.png)

**安裝需要插件**

**1. 因Git使用ssh需要安全性驗證，需要安裝openssh-server ca-certificates。**

**2. GitLab支援寄信服務，需要安裝postfix。**

```
sudo apt-get install net-tools openssh-server ca-certificates postfix tzdata -y
```
![image](https://github.com/880831ian/kubernetes-elk/blob/main/images/1.png)



