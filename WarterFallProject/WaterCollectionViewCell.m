//
//  WaterCollectionViewCell.m
//  WarterFallProject
//
//  Created by 许菠菠 on 16/5/6.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

#import "WaterCollectionViewCell.h"

@implementation WaterCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 30)];
        self.titleLabel.center = self.contentView.center;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:self.titleLabel];
        self.titleLabel.text = @"许菠菠";
        
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}
@end
