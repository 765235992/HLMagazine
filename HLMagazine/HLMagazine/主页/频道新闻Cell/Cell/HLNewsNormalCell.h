//
//  HLNewsNormalCell.h
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLChannelNewsModel.h"
#import "HLImageView.h"
@interface HLNewsNormalCell : UITableViewCell
@property (strong, nonatomic) HLChannelNewsModel *channelNewsModel;
@property (weak, nonatomic) IBOutlet HLImageView *newsThumbImageView;


@property (weak, nonatomic) IBOutlet UIImageView *newsDividerLineImageView;

@property (weak, nonatomic) IBOutlet UILabel *newsTitleLabel;
@end
