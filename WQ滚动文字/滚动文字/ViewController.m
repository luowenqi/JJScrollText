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
    //设置滚动文字的内容
    label.text = @"  滚动文字,   这里的文字真的是可以进行滚动的喔  你看真的在滚动 ";
    //设置滚动样式
    label.style = ORTextCycleStyleAlways;  //如果不管文字长度都可以进行滚动就选这个,还有其他可以选择的样式
    //把滚动文字的lable加到视图
    [self.view addSubview:label];
    label.rate = 0.6;
    
    
    /*
     其他的可以设置的内容
     @property (nonatomic, assign)IBInspectable CGFloat interval; //设置滚动的间隔  70
     @property (nonatomic, assign)IBInspectable CGFloat rate;//滚动的速度  0~1  默认 0.5
     @property (nonatomic, copy)IBInspectable NSString *text;  //滚动的文字内容
     @property (nonatomic, strong) UIFont *font;  //设置滚动字体
     @property (nonatomic, strong)IBInspectable UIColor *textColor;  //设置文字颜色
     @property (nonatomic, assign) NSTextAlignment textAlignment;   //设置文字对齐方式
     */
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
