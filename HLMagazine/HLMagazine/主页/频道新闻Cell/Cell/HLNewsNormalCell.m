//
//  HLNewsNormalCell.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLNewsNormalCell.h"
#import "JHImageView.h"
@implementation HLNewsNormalCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    self.cellSeparateStyle = UITableViewCellSeparateStyleNone

    self.dk_backgroundColorPicker = DKColorPickerWithKey(频道控制器背景颜色);
    
    
    _newsDividerLineImageView.dk_backgroundColorPicker = DKColorPickerWithKey(新闻列表Cell分割线颜色);
    
    _newsTitleLabel.dk_textColorPicker = DKColorPickerWithKey(新闻列表Cell标题颜色);
    _newsTitleLabel.numberOfLines = 0;

    [_newsThumbImageView addSubview:[[[NSBundle mainBundle] loadNibNamed:@"JHImageView" owner:nil options:nil] lastObject]];
//    UINib *nib = [UINib nibWithNibName:@"mageView" bundle:nil];
//    _newsThumbImageView
//    [self.view addSubview:im];

    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setChannelNewsModel:(HLChannelNewsModel *)channelNewsModel
{
    NSLog(@"%@",_newsThumbImageView.backgroundColor = [UIColor redColor]);
//    NSLog(@"%@",_newsThumbImageView.maskImage);
    _newsTitleLabel.numberOfLines = 0;
    [_newsTitleLabel sizeToFit];
//    _newsThumbImageView.image = [UIImage imageNamed:@"defaultImage"];
//    _newsThumbImageView
}
@end
