# scrollText
一句代码,实现滚动文字

###文字轮播

>使用方法  传入文字
```
JJScorllTextLable *label = [[JJScorllTextLable alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40)];


label.text = @"  滚动文字,   这里的文字真的是可以进行滚动的喔  你看真的在滚动 ";
```

> 还有图片轮播 地址https://github.com/luowenqi/JJCyclePicView

* 支持自定义轮播间隔距离, 轮播速率   
> CGFloat interval; //间隔 默认 70  
 CGFloat rate;//速率 0~1 默认 0.5
 如果觉得好,就点一个赞吧
 
* 样式支持
 JJTextCycleStyleDefault, //只有文字长度大于label长度滚动   默认样式

 JJTextCycleStyleAlways, //无论文字长短，一直滚动  
 

### 图片

![image](https://github.com/luowenqi/scrollText/blob/master/WQ滚动文字/滚动文字/ScreenShots/Untitled2.gif)
