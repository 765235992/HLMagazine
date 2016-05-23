//
//  HLRecommendHeaderView.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLRecommendHeaderView.h"

@implementation HLRecommendHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.sliderView];
        [self addSubview:self.blockView];
//        self.dk_backgroundColorPicker = DKColorPickerWithKey(频道控制器背景颜色);

    }
    return self;
}
- (HLRecommendSliderView *)sliderView
{
    if (!_sliderView) {
        
        self.sliderView = [[HLRecommendSliderView alloc] initWithFrame:CGRectMake(0, 0, screen_Width, 240)];
        
    }
    return _sliderView;
}

- (HLRecommendBlockView *)blockView
{
    if (!_blockView) {
        
        self.blockView = [[HLRecommendBlockView alloc] initWithFrame:CGRectMake(0, 240, screen_Width, self.frame.size.height - 240)];
        
//        _blockView.backgroundColor = [UIColor orangeColor];
    }
    
    return _blockView;
}

@end
