//
//  MyViewCell.m
//  DifferentViewController
//
//  Created by 郑少玲 on 2019/4/17.
//  Copyright © 2019 郑少玲. All rights reserved.
//

#import "MyViewCell.h"
#import "Masonry.h"
#import "SLRedTipView.h"

@implementation MyViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    self.contentView.backgroundColor = [UIColor blueColor];
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        SLRedTipView *rt = [[SLRedTipView alloc]init];
        [self.contentView addSubview:rt];
        [rt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(20);
            make.top.equalTo(self.contentView.mas_top).offset(20);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(-20);
        }];
        
        
        
    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
