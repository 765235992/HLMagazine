//
//  HLRecommendBlockView.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLRecommendBlockView.h"
#import "HLBlockItemView.h"

#define aaa 5

@implementation HLRecommendBlockView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addItemBlockView];
        
    }
    return self;
}

- (void)addItemBlockView
{
    CGFloat tempWidth = (screen_Width-3*aaa)/2;
    
    CGFloat tempHeight = (self.frame.size.height - 3*aaa)/2;
    
    CGFloat width = aaa;
    
    CGFloat height = aaa;
    
    for (int i = 0; i < 2; i++) {

        for (int j = 0; j < 2; j ++) {
            
            HLBlockItemView *itemView = [[HLBlockItemView alloc] initWithFrame:CGRectMake(width, height, tempWidth, tempHeight)];
            
//            itemView.backgroundColor = [UIColor yellowColor];
            
            [self addSubview:itemView];
            
            width = itemView.frame.size.width + itemView.frame.origin.x + aaa;
            
        }
        
        width = aaa;
        
        height = tempHeight + 2* aaa;

    }
}
@end
