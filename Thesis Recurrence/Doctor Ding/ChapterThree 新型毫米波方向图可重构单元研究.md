# 新型毫米波方向图可重构单元研究
![具有馈电可重构结构的毫米波方向图可重构单元](/imgs/2023-09-20/6VfQIaoIoHowhKTU.png)

可重构单元部分尺寸，la = 35.14mm，wa = 20.74mm 和 da = 3.38mm


- **结构组成**
- 辐射贴片层 patch
- 介质层 sub
- 金属地板层 ground
- 缝隙 slot
- 馈电网络层 feeding layer
- 反射金属地板 reflection ground


![毫米波缝隙耦合辐射基本元的结构和具体尺寸](/imgs/2023-09-20/7SetwbPqR8H5etUO.png)    ![毫米波缝隙耦合辐射基本元的结构和具体尺寸](/imgs/2023-09-20/9zQ2SWdgc1hHT7dh.png)


1. 材料的选取
	介质基板：材料与几何厚度
	   材料主要与其介电常数、损耗角正切等参量相关
	   损耗主要包括
	  - 介质损耗（主要由基片材料的介电常数、损耗角正切决定）
	  - 导体损耗（主要由导体表面电阻决定）
      - 表面波损耗（主要由频率和基片的厚度决定）
	  - 辐射损耗（薄基片可忽略）

综合考虑上述情况，我们选取 ** 罗杰斯 RT5880 ** 作为基板材料，其相对介电常数为 2.2、基板厚度为 0.254mm、表层覆盖铜厚度为 0.008mm、损耗角正切为 0.0009。RT5880 较低的介电常数可以减少介质损耗以及表面波损耗；小介电常数还可以减少谐振腔中存储的电磁能量，从而减低 Q 值；此外，相比于厚基片会激励起更多的表面波，RT5880 薄基板在保证天线低剖面的同时，降低了表面波损耗。

2. 馈电方式选取
	- 微带线共面侧馈
	- 同轴线背馈
	-  ** 电磁耦合馈电	**

3. 关键尺寸选取
![基本单元尺寸](/imgs/2023-10-07/IYjezEf0cV8elFMC.png)

## 仿真结果
![仿真模型](/imgs/2023-10-07/ZuUPZL6RMkr0f3Ug.png)

![反射系数](/imgs/2023-10-07/apmG3F30FoX4HcVb.png)

![E_Plane](/imgs/2023-10-07/z9E1QUZm9oW7uN9s.png)

![H_plane](/imgs/2023-10-07/6cHGIxyb3PsUftaH.png)

实验数据：
- 反射系数可低于10dB
- 增益可达10dB
- E面3dB波束宽度65°
- H面3dB波束宽度65°
- 金属反射板的确可以提高增益，为2dB左右

问题：
- H面仿真结果错误
- E面仿真波束宽度过大

# 方向图可重构单元设计结果及分析
阵列方向图计算公式（理论方向图） + 基本辐射元间互藕效应
![阵列方向图计算公式](/imgs/2023-10-07/GGR4qcLp8zoUxP15.jpeg)

![波束最大值指向角度](/imgs/2023-10-07/3YwnGXqNJQGl6slR.png)

只通过调节相邻基本辐射元间的相位差来改变方向图可重构单元波束最大指向

### 理想馈电相移网络

理想的馈电相移网络是一个无反射、无损耗的二端口网络。
它仅仅对信号产生一定的相位改变而不产生能量的衰减，其散射矩阵可以写为
![理想的馈电相移网络散射矩阵](/imgs/2023-10-07/UOkoRKvntnA91N04.png)
如果利用微带传输线传输相位延迟性来构建移相网络，
那么经过长度为l 的微带传输线，相位延迟量为
![微带传输线传输相位延迟](/imgs/2023-10-07/gSJaZ2bwNlBKyFPg.png)

3区域划分 = 3重构模式
![3重构模式方向图最大指向](/imgs/2023-10-07/zc2WqC04MFWL5OoY.png)

由最大指向角度公式可计算，不同模式馈电相移分别为
![不同模式馈电相移](/imgs/2023-10-07/CwrlYiA5g2H4HJ1X.png)

加入PIN 开关
*（考虑到 PIN 二极管开关的封装尺寸，用于放置 PIN 开关的缝隙宽度均设计成 0.5mm。）*
![可重构馈电网络整体示意图](/imgs/2023-10-07/sLjqZ2BRoJ6iaxSw.png)
SMA 是微波接头，靠近 SMA 的黑色小方块是用来隔离直流的贴片电容
Pi (i = 1, 2,…,5)代表了接地接点或接 DC 电源的接点
![可重构馈电网络重构示意图](/imgs/2023-10-07/VRxzY9Nu9qZZkxvD.png)
![重构馈电网络的步骤](/imgs/2023-10-07/g3JJQlDbE3W9DKC9.png)
相比于 Mode-1 和 Mode-3，Mode-2 端口的反射系数更小
与 Mode-1 和 Mode-3 相比，Mode-2 的馈电结构中的倒角更加地少，Mode-2 的馈电网络更加简单，因此这样可以减少一些额外的反射。

## 仿真结果
许多参数未给出，大致设定一参数
![辐射阵列模型](/imgs/2023-10-08/y2hZ23aB3hhAOsv8.png)
### Mode1
![Mode1模型](/imgs/2023-10-08/hI1Vu9pm41tObQzm.jpeg)
![Mode1S参数](/imgs/2023-10-08/Ym54rGTzcErVNT2k.jpeg)
![Mode1E面方向图](/imgs/2023-10-08/NtpbK2w8uVzme1si.jpeg)
### Mode2
![Mode2模型](/imgs/2023-10-08/sYmk10P3l6zVJXAg.png)
![Mode2S参数](/imgs/2023-10-08/sVAGGXonkQSGEVor.png)
![Mode2E面方向图](/imgs/2023-10-08/z5J5FlrLKFbGbvGW.png)
### Mode3
![Mode3模型](/imgs/2023-10-08/Tr5gEKjvQ7j0PUMx.png)
![Mode3S参数](/imgs/2023-10-08/7JMzIpl9EsBkHOtt.png)
![Mode3E面方向图](/imgs/2023-10-08/sSzuoTQrkOKtD6DO.png)

仿真结果分析：
- PIN二极管在HFSS种如何仿真，开路可以直接断开传输线吗？
- S参数：出现明显频移，如何做匹配工作？
- Mode2和Mode3在调整馈电相位差时，在出现最大波束指向偏转同时，出现副瓣，旁瓣，Mode3还出现了严重的后瓣，这都如何解释与优化？
- 仿真全流程中H面始终不是全向的（圆形）
- E面，H面半功率波束宽度不达标
- 辐射平坦度怎么计算

待解决问题：互藕

2023.10.11
与韦高老师交谈后，重新从基本单元开始设计。
阅读参考文献101-缝隙馈电贴片天线的CAD设计与分析。
问题![拓展带宽](/imgs/2023-10-11/uF1e5pv75jJaiRbK.png)
为什么耦合馈电可以拓展带宽？
重新设计基本单元：发现缝隙不在中线，电场最大辐射方向有所偏转（理解错误）
缝隙位置会影响什么？


<!--stackedit_data:
eyJoaXN0b3J5IjpbMTkwNTMzMDQ3MSw0MDQyNzY4MzQsLTE4Mj
M5ODc3ODUsMTM2MzI2NjA4NSwtOTQzNTQ1Nzg0LC0xMzI2MDAx
NTEwLDEwODAwNjQxNTksMTY1NzU2MTQxNCwtMTEzMTE3NDUsMT
Q3MjU3NTA5OCwtMTU0ODU2NzU4MSwxNTQ5Mjk2NDg1LDQ1NjYy
MTc3LC0xOTQ5NTQyMzQ0XX0=
-->