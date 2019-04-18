//
//  SLRedTipView.m
//  DifferentViewController
//
//  Created by 郑少玲 on 2019/4/18.
//  Copyright © 2019 郑少玲. All rights reserved.
//带有右上角小红点的label

#import "SLRedTipView.h"
#import "Masonry.h"
#import "SLInsetLabel.h"

@interface SLRedTipView()
@property(nonatomic,weak)SLInsetLabel *lab;
@end

@implementation SLRedTipView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //
        SLInsetLabel *lab = [[SLInsetLabel alloc]init];
        lab.edgeInsets = UIEdgeInsetsMake(8, 10, 8, 10);
        lab.text = @"  乳腺癌  ";
        lab.font = [UIFont systemFontOfSize:15];
        lab.textColor = [UIColor blackColor];
        lab.backgroundColor = [UIColor yellowColor];
        lab.layer.cornerRadius = 2;
        lab.layer.masksToBounds = YES;
        [self addSubview:lab];
        
        UIView *redTip = [[UIView alloc]init];
        redTip.layer.cornerRadius = 4;
        redTip.layer.masksToBounds = YES;
        redTip.backgroundColor = [UIColor redColor];
        [self addSubview:redTip];
        
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.mas_left).offset(0);
            make.top.equalTo(self.mas_top).offset(0);
            make.right.equalTo(self.mas_right).offset(0);
            make.bottom.equalTo(self.mas_bottom).offset(0);
        }];
        
        [redTip mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.mas_right).offset(4);
            make.bottom.equalTo(self.mas_top).offset(4);
            make.height.equalTo(@8);
            make.width.equalTo(@8);
        }];
        
    }
    return self;
}
@end
