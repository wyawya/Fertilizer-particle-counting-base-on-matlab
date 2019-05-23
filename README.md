# Fertilizer-particle-counting-base-on-matlab
 Counting fertilizer particles in red background 
 
![pic](https://github.com/wyawya/Fertilizer-particle-counting-base-on-matlab/blob/master/project/picture/5.PNG)

我们需要检测图片中的化肥颗粒，然而化肥颗粒的面积非常小。
不过，化肥颗粒在s颜色空间下灰度值与背景灰度值差距大，我们根据这一点区分出背景与可能是化肥的图像区域。
![s](https://github.com/wyawya/Fertilizer-particle-counting-base-on-matlab/blob/master/project/picture/s.PNG)
然后再统计分析化肥颗粒的大小范围，并据此将化肥颗粒与其他杂质区分。
![result1](https://github.com/wyawya/Fertilizer-particle-counting-base-on-matlab/blob/master/project/picture/6.PNG)
![result2](https://github.com/wyawya/Fertilizer-particle-counting-base-on-matlab/blob/master/project/picture/7.PNG)
