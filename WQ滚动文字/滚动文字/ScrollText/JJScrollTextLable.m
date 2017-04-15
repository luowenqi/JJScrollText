
//  ViewController.m
//  滚动文字
//
//  Created by 罗文琦 on 2017/3/27.
//  Copyright © 2017年 罗文琦. All rights reserved.
//

#import "JJScrollTextLable.h"

@interface JJScorllTextLable () {
    CGFloat _width;
    CGFloat _height;
    CGFloat _textWidth;
    NSTimer *_timer;
    CGFloat _distance;//0.1秒移动的实际pt
}

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;

@end

@implementation JJScorllTextLable

//初始化方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _width = frame.size.width;
        _height = frame.size.height;
        [self initUSerInterface];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithFrame:CGRectMake(0, 0, 100, 30)];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    _width = self.frame.size.width;
    _height = self.frame.size.height;
    [self initUSerInterface];
    
    [self start];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _width = self.frame.size.width;
    _height = self.frame.size.height;
    [self labelAttrbuits];

    [self start];

}

#pragma mark -- private
- (void)initUSerInterface {
    self.clipsToBounds = YES;
    
    _distance = _rate>0 ? _rate * 10 : 5;
    _interval = _interval>0 ? _interval : 70;
    _style = JJTextCycleStyleDefault;
    [self creatLabel];
}

- (void)creatLabel{
    
    self.label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, _width, _height)];
    self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(_width, 0, _width, _height)];
    if (_textColor) {
        self.label1.textColor = self.label2.textColor = _textColor;
    }
    if (_text && _text.length > 0) {
        self.label1.text = self.label2.text = _text;
    }
    
    [self addSubview:self.label1];
    [self addSubview:self.label2];
}

- (void)labelAttrbuits {
    
    [self.label1 sizeToFit];
    [self.label2 sizeToFit];
    _textWidth = CGRectGetWidth(self.label1.frame);
    self.label1.center = CGPointMake(_textWidth / 2, _height / 2.0);
    self.label2.center = CGPointMake(_textWidth / 2 + _width, _height / 2.0);

}


- (void)labelChange {
    
    if (_style == JJTextCycleStyleDefault && _textWidth < _width) {
        [self stop];
        return;
    }
    
    CGRect frame1 = self.label1.frame;
    CGFloat maxX1 = CGRectGetMaxX(self.label1.frame);
    
    CGRect frame2 = self.label2.frame;
    CGFloat maxX2 = CGRectGetMaxX(self.label2.frame);
    
    if (_width - maxX1 >= _interval || (frame2.origin.x > -_textWidth && maxX2 < _width + _textWidth)) {
        frame2.origin.x -= _distance;
    }
    
    if (_width - maxX2 >= _interval || (frame1.origin.x > -_textWidth && maxX1 < _width + _textWidth)) {
        frame1.origin.x -= _distance;
    }
    
    if (maxX1 < -3) {
        frame1.origin.x = _width;
    }
    
    if (maxX2 < -3) {
        frame2.origin.x = _width;
    }
    
    self.label1.frame = frame1;
    self.label2.frame = frame2;
    
}

#pragma mark -- timer
- (void)start {
    if (!_timer) {
        __weak typeof(self) weakSelf = self;
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
            [weakSelf labelChange];
        }];
        return;
    }
    _timer.fireDate = [NSDate date];
}

- (void)pause {
    _timer.fireDate = [NSDate distantFuture];
}

- (void)stop {
    [_timer invalidate];
    _timer = nil;
}

#pragma mark -- setter
- (void)setText:(NSString *)text {
    _text = text;
    self.label1.text = self.label2.text = text;
    self.clipsToBounds = YES;
    
    [self labelAttrbuits];
}

- (void)setFont:(UIFont *)font {
    _font = font;
    self.label1.font = self.label2.font = font;
    [self labelAttrbuits];
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    self.label1.textColor = self.label2.textColor = textColor;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment {
    _textAlignment = textAlignment;
    self.label1.textAlignment = self.label2.textAlignment = textAlignment;
}

- (void)setStyle:(JJTextCycleStyle)style {
    _style = style;
    [self start];
}

- (void)setRate:(CGFloat)rate {
    _rate = rate > 1 ? 1 : rate;
    _rate = _rate < 0 ? 0 : _rate;
    _distance = _rate * 10;
}

- (void)setInterval:(CGFloat)interval {
    _interval = interval;
}

@end




