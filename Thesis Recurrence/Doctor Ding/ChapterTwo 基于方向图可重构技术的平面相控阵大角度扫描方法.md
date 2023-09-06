# 基于方向图可重构技术的平面相控阵大角度扫描方法
## 相控阵扫描波束相关理论简介
![相控阵扫描波束相关理论简介](/imgs/2023-09-06/PIdzxjKNk2QkSxBb.png)

## 相控阵大角度扫描实验验证方案
**主要验证内容与关键指标：**
- 低成本实现大角度扫描相控阵天线，构建 1×4 有源相控阵系统
- 工作在Ka波段
![频率波段](/imgs/2023-09-06/cFMSgIw9DALRSVLF.png)
- 轴线平面内方向图扫描区域达到-80° ~ +80°
- 扫描波束宽度在轴线方向小于10度，垂直轴线方向小于15度
- 相控阵系统的有源增益达到 30dB

**主要流程：指标分解 **->**  设计部件 **->** 系统搭接**
1. 指标分解
	- 相控阵系统增益分配Gsystem=30dB。
	   Gsystem = Garray x Gfeed
	   Garray = 30000/(θ_0.5 x φ_0.5) = 23dB
	   Gfeed = 7dB
	- 相控阵单元增益分配(MxN单元阵列)
	   Garray = Gelement x Garray_vertical_Mx1 x Garray_line_1xN
	   垂直于轴线子阵Garray_vertical_Mx1 = 6 dB (该方向波束宽度小于15度，以普通微带天线为例，波束宽度为100度，M取4时	大概满足要求，此时阵因子增益大概为6dB)
	   ***计算 Garray_line_1xN 问题较大（表2.1）！！！***
	- 相控阵阵列半功率波束宽度分配
	   

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEyMTAyOTAxMzcsMTYyNjE4ODEwNSwtNT
k0NTkwMzE2LC0xODk2Nzg1ODEwXX0=
-->
