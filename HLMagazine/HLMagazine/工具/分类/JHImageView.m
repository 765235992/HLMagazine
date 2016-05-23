//
//  JHImageView.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "JHImageView.h"

@implementation JHImageView
- (void)awakeFromNib {
    [super awakeFromNib];
 _nightMaskImageView.dk_backgroundColorPicker = DKColorPickerWithColors([UIColor clearColor],[UIColor colorWithRed:0/255.0 green:0 blue:0 alpha:0.4],[UIColor clearColor]);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
