//
//  HLRecommendedVC.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLRecommendedVC.h"
#import "HLNewsNormalCell.h"
#import "HLChannelNewsModel.h"
#import "HLRecommendHeaderView.h"

@interface HLRecommendedVC ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *aTableView;
@property (nonatomic, strong) HLChannelNewsModel *model;
@property (nonatomic, strong) HLRecommendHeaderView *tableHeaderView;
@end

@implementation HLRecommendedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _aTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    _aTableView.tableHeaderView = self.tableHeaderView;
    
    [_aTableView registerNib:[UINib nibWithNibName:@"HLNewsNormalCell" bundle:nil]forCellReuseIdentifier:@"HLNewsNormalCell"];
}



#pragma mark UITableViewDelegate 和 UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    HLNewsNormalCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HLNewsNormalCell"];
    cell.channelNewsModel = self.model;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 101*screen_Width/320;
}
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 250;
//}


/*
 *  创建透视图
 */
- (HLRecommendHeaderView *)tableHeaderView
{
    if (!_tableHeaderView) {
        
        self.tableHeaderView = [[HLRecommendHeaderView alloc] initWithFrame:CGRectMake(0, 0, screen_Width, 420)];
        _tableHeaderView.dk_backgroundColorPicker = DKColorPickerWithKey(频道控制器背景颜色);
    }
    
    return _tableHeaderView;
}






@end
