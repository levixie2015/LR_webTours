# LR_webTours
LR11 java Vuser测试

# LoadRunner11中java vuser引用jar包
### LoadRunner+webDriver 测试webTours

	环境准备：
	1.jdk1.6 32位 ！！！！（最高支持jdk1.6,且必须为32位）
	2.selenium-server-standalone-2.21.0.jar
	3.IntelliJ IDEA（项目LR_webTours）
	4.LoadRunner11
	5.chromedriver.exe

### 1.copy项目编译文件
	项目LR_webTours编译文件copy到D:\Program Files (x86)\HP\LoadRunner\classes

### 2.loadRunner运行配置

#### 1.Edit Runtime Settins(F4)---->Java Environment Settins

##### Java JVM: 
	Use Specified JDK:
		D:\Program Files (x86)\Java\jdk1.6.0_30
##### ClassthPath--->Classpath Entries:
	JDK bin目录：D:\Program Files (x86)\Java\jdk1.6.0_30\bin
	
	selenium-server-standalone-2.21.0.jar目录
	
	项目LR_webTours导入jar的路径
	
	D:\Program Files (x86)\HP\LoadRunner\classes
	

----------

github源码（LR_webTours）：
[https://github.com/levixie2015/LR_webTours](https://github.com/levixie2015/LR_webTours)
