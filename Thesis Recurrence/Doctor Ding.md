# 基于方向图可重构技术的相控阵大角度扫描特性研究

## 相控阵基本概念

 **相控阵结构组成**
- 阵元天线
- 馈电网络
- 移相器
- 有源相控阵还包括T/R组件（含有固态高功率发射放大器和低噪声放大器）、设定代码、波控器等等

***

**相控阵天线按照扫描方式分类**
- 频率扫描天线（frequency scanning  antenna）
- ***相位扫描天线（phased scanning antenna）***
	相位扫描天线即普遍提及的相控阵天线（今后主流趋势）。
	- 无源相控阵（Passive Phased Array）
	   阵元不产生信号，只改变信号相位。
	- 有源相控阵（Active Phased Array）
	   每一阵元都包含信号产生、发射和接收功能——***T/R组件***。

***

**相控阵天线发展前景**
- 共形相控阵天线
- 智能蒙皮相控阵天线
	具有低截获概率（LPI）和低可探测性（LO）
	蒙皮：天线的共形和承载功能
	智能：天线自适应性
	技术难点：低RCS技术、动态低RCS技术、时域/空域/频域/重构技术、低截获概率技术、低可探测技术等
- **大角度扫描相控阵天线**
	***制约扫描角度因素：阵元的互耦效应、阵元方向图以及阻抗匹配等。***
	普通微带贴片最佳扫描范围为 ***单元法向+-60°范围***  [***参考文献 15-16***]
    可用技术：**方向图可重构技术**
    实现方法：
    - 选用具有宽波束的辐射单元，如槽缝天线、偶极子天线、宽波束微带天线等。
    - 采用“机械扫描+相位扫描”相结合的方式。
    - 采用共形技术。
    - 采用新型口径面分布和新型天线单元实现相控阵大角度扫描。
	    - 离散分布口径面
	    - 左手结构天线
	    - 方向图可重构天线

## 方向图可重构技术
使得一付天线具备多付天线才能具有的功能。
实现方法：改变自身工作频率、极化方式、阻抗带宽及辐射方向图等等。
分类：频率可重构天线、极化可重构天线、方向图可重构天线等等。

**方向图可重构天线** 实现途径
- 改变辐射体结构
	- 改变辐射体内部结构（开槽、挖洞）

		*控制嵌入开关通断切换单极子和偶极子*	
	![控制嵌入开关通断切换单极子和偶极子](/imgs/2023-09-02/CPqsNTlwk948x1sr.png)

	- 改变辐射体外部结构（辐射体四周添加寄生辐射体或改变主辐射体外部所连接负载状态）
	
		*控制微带贴片天线两侧俩寄生贴片长度，用类似八木天线原理重构方向图*
	
		![改变外部结构](/imgs/2023-09-02/4jdluD3XRd2dCBCm.png)

		增加寄生辐射体缺点——增大天线尺寸

- 改变馈电结构

	*开关控制四个阵元是否工作（成为 ***哑元*** ）*

	![输入图片说明](/imgs/2023-09-02/c0i819anyrrihQdA.png)

- 人工材料、异性介质等特殊构造

***

**方向图可重构天线中 开关 的应用**
-  PIN二极管
- 变容二极管
- MEMS（Micro Electro Mechanical Systems）微机电系统——电磁开关
	在微波、毫米波段拥有独特优势——插入损耗低，响应时间短。
- 光导开关（Photoconductive Swiches）
	响应时间为微秒量级，功率容量可达几十瓦，具有很好的同步精度，耐压能力，较高的隔离度，体积小，几乎不受电磁干扰。
	
	>- 散射矩阵：
	>- 隔离度：
	>- 插入损耗：
	
![四种开关对比](/imgs/2023-09-02/ln1z3vQzMRvLqOM6.png)


## 论文研究工作主要内容
1. 绪论
	- 研究背景、发展动态和需求——总结亟需解决问题
	- 综述可行性方案和可行技术
	- 介绍本文研究工作、研究重点以及创新点
2. 基于方向图可重构技术的平面相控阵大角度扫描方法
3. 新型毫米波方向图可重构单元研究
4. 含有方向图可重构单元的毫米波大角度扫描相控阵
5. 总结与展望
<!--stackedit_data:
eyJkaXNjdXNzaW9ucyI6eyI5MmNDNUJvYlZWb2FUUFpvIjp7In
N0YXJ0IjoxNDc5LCJlbmQiOjE0ODEsInRleHQiOiLlvq7np5Ii
fX0sImNvbW1lbnRzIjp7IlNaeFlEa2lMWXdhMnBtR0EiOnsiZG
lzY3Vzc2lvbklkIjoiOTJjQzVCb2JWVm9hVFBabyIsInN1YiI6
ImdoOjczNTMwMzI5IiwidGV4dCI6IjEgcyA9IDEwXjYgdXNcbj
EgcyA9IDEwXjkgbnNcbjEgcyA9IDEwXjEyIHBzIiwiY3JlYXRl
ZCI6MTY5MzY0ODQ2NjQ1Nn19LCJoaXN0b3J5IjpbMTM2NTM5Nj
Y3Nyw0NjY5NDEwMzksLTEzOTM2OTA4MTRdfQ==
-->