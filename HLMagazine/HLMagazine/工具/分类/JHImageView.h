//
//  JHImageView.h
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHImageView : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *nightMaskImageView;

@end
