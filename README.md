# scrollText
传入字符串，就可以实现文字的滚动效果

###文字轮播

* 支持自定义轮播间隔距离, 轮播速率   
> CGFloat interval; //间隔 默认 70  
 CGFloat rate;//速率 0~1 默认 0.5

 
* 样式支持
> ORTextCycleStyleDefault, //只有文字长度大于label长度滚动   默认样式
    ORTextCycleStyleAlways, //无论文字长短，一直滚动  
 
* 代码使用  
>  //创建一个滚动文字的label
ORCycleLabel *label = [[ORCycleLabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40)];

//设置滚动文字的内容
label.text = @"  滚动文字,   这里的文字真的是可以进行滚动的喔  你看真的在滚动 ";

//设置滚动样式
label.style = ORTextCycleStyleAlways;  
//如果不管文字长度都可以进行滚动就选这个,还有其他可以选择的样式

//把滚动文字的lable加到视图
[self.view addSubview:label];
label.rate = 0.6;  

