//
//  HLRecommendSliderView.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLRecommendSliderView.h"

@interface HLRecommendSliderView ()
{
    LJHBaseShufflingView  *picView;
}

@end

@implementation HLRecommendSliderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        picView = [[LJHBaseShufflingView alloc] initWithFrame:self.bounds andDefaultImage:[UIImage imageNamed:@"1.jpg"]];
        
        picView.backgroundColor = [UIColor redColor];
        
        picView.AutoScrollDelay = 10.0f;
        //
        picView.style = PageControlAtCenter;
        
        //    picView.font = [UIFont fontWithName:nil size:20];
        
        [self addSubview:picView];
        NSMutableArray *arr = [NSMutableArray array];
        
        NSArray *tempArr = @[@"http://ifile.cbn.me/store/slide/temp/4073.jpg",@"http://ifile.cbn.me/store/slide/temp/4074.jpg",@"http://ifile.cbn.me/store/slide/temp/4075.jpg",@"http://ifile.cbn.me/store/slide/temp/4102.jpg",@"http://ifile.cbn.me/store/slide/temp/4099.jpg",@"http://ifile.cbn.me/store/article_pic/cover/bigc/2/22/22060.jpg?_t=1463382343",@"http://ifile.cbn.me/store/article_pic/cover/bigc/2/22/22009.jpg?_t=1463029513"];
        for (NSInteger i = 0; i < tempArr.count; i++) {
            
            LJHShufflingModel *itemModel = [[LJHShufflingModel alloc] init];
            
            itemModel.newsTitleStr = @"标题";
            
            itemModel.newsDefaultImage = [UIImage imageNamed:@"defaultImage"];
            
            itemModel.newsThumbStr = [tempArr objectAtIndex:i];
            
            itemModel.index = i;
            
            [arr addObject:itemModel];
            
        }
        picView.sourceModelArray = arr;
        
        
        
        [picView setImageViewDidTapAtIndex:^(LJHShufflingModel *shufflingModel) {
            
            NSLog(@" %ld  ",(long)shufflingModel.index);
            
        }];

    }
    return self;
}
@end
