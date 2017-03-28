# scrollText
传入字符串，就可以实现文字的滚动效果

###文字轮播

* 支持自定义轮播间隔距离, 轮播速率   
> CGFloat interval; //间隔 默认 70  
 CGFloat rate;//速率 0~1 默认 0.5
 如果觉得好,就点一个赞吧
 
* 样式支持
> ORTextCycleStyleDefault, //只有文字长度大于label长度滚动   默认样式
    ORTextCycleStyleAlways, //无论文字长短，一直滚动  
 
* 代码使用  
>  //创建一个滚动文字的label
ORCycleLabel *label = [[ORCycleLabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40)];

label.text = @"  滚动文字,   这里的文字真的是可以进行滚动的喔  你看真的在滚动 ";

