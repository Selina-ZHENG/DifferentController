//
//  SLInsetLabel.m
//  sideBarTableView0323
//
//  Created by 郑少玲 on 26/03/2018.
//  Copyright © 2018 郑少玲. All rights reserved.
//

#import "SLInsetLabel.h"

@implementation SLInsetLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
//修复当设置了edgeInset之后UILabel的instrint contentsize 失效的问题
- (void)setEdgeInsets:(UIEdgeInsets)edgeInsets{
    _edgeInsets = edgeInsets;
    [self invalidateIntrinsicContentSize];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    UIEdgeInsets insets = self.edgeInsets;
    CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, insets)
                    limitedToNumberOfLines:numberOfLines];
    
    rect.origin.x    -= insets.left;
    rect.origin.y    -= insets.top;
    rect.size.width  += (insets.left + insets.right);
    rect.size.height += (insets.top + insets.bottom);
    
    return rect;
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
    
}

//- (CGSize)intrinsicContentSize
//{
//    CGSize size = [super intrinsicContentSize];
//    size.width  += self.edgeInsets.left + self.edgeInsets.right;
//    size.height += self.edgeInsets.top + self.edgeInsets.bottom;
//    return size;
//}

@end
