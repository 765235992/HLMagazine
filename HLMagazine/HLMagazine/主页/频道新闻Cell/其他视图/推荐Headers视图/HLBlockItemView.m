//
//  HLBlockItemView.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLBlockItemView.h"

@implementation HLBlockItemView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.newsThumbImageView];
        
    }
    return self;
}
- (HLImageView *)newsThumbImageView
{
    if (!_newsThumbImageView) {
        
        self.newsThumbImageView = [[HLImageView alloc] initWithFrame:self.bounds];
        
//        _newsThumbImageView.image = [UIImage imageNamed:@"defaultImage"];
    }
    return _newsThumbImageView;
}

@end
