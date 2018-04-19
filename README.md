# Core-AVFoundation
AVFoundation Application,AVFoundation 框架初探究，从最基本的入手，一点点的学习这个框架里面的每一个类，争取把这个框架里面的基本的类都有一个涉及到，梳理AVFoundation整体结构，以及上下游的依赖基础框架，同时基于应用层面分析AVFoundation整体功能着陆点。
   
AVFoundation是封装在 Core Avdio 、Core Media 、Core Animition 等这些个层次之上的，它里面还包括一个音频类，在上层就是我们常用的UIKit了，再往上层图上面写的是media Play其实就是我们熟悉的AVKit层，AVKit及方便的简化了媒体应用创建的过程
   
它的下三层为：

1、 Core Avdio  处理所有音频事件，为所有音频以及MIDI（Musical Instrument Digital Interface 乐器数字接口）内容的录制、播放等提供了接口。设置可以针对音频信号进行完全控制,并通过Audio Units来构建一些复杂的音频处理，它是由多个框架整合在一起的。看着这么多内容感觉这个框架我们都能学习一大堆东西，我们接着往下总结先。

2、Core Media  是提供音频样本和视频帧处理等的API

3、Core Animition 动画相关框架, 封装了支持OpenGL和OpenGL ES功能的ObjC各种类.。AVFoundation可以利用CoreAnimation让开发者能够在视频的编辑和播放过程中添加动画和图片效果。

DEMO 系统支持:ios 10+
