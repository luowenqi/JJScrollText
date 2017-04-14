//
//  ViewController.m
//  滚动文字
//
//  Created by 罗文琦 on 2017/3/27.
//  Copyright © 2017年 罗文琦. All rights reserved.
//

#import "ViewController.h"
#import "LWQScrollText.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个滚动文字的label
    ORCycleLabel *label = [[ORCycleLabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40)];
    label.text = @"哈🙃☺点一个赞吧👍👍👍   你的赞是我的动力❤️多谢";   //设置滚动文字的内容
    [self.view addSubview:label]; //把滚动文字的lable加到视图
    
    //本项目github地址https://github.com/luowenqi/JJScrollText
    //还有图片轮播，github地址https://github.com/luowenqi/JJCyclePicView
    
    
    /*
     其他的可以设置的内容
     @property (nonatomic, assign) ORTextCycleStyle style;   //设置滚动的样式
     @property (nonatomic, assign)IBInspectable CGFloat interval; //设置滚动的间隔  70
     @property (nonatomic, assign)IBInspectable CGFloat rate;//滚动的速度  0~1  默认 0.5
     @property (nonatomic, copy)IBInspectable NSString *text;  //滚动的文字内容
     @property (nonatomic, strong) UIFont *font;  //设置滚动字体
     @property (nonatomic, strong)IBInspectable UIColor *textColor;  //设置文字颜色
     @property (nonatomic, assign) NSTextAlignment textAlignment;   //设置文字对齐方式
     */
    
}


@end
