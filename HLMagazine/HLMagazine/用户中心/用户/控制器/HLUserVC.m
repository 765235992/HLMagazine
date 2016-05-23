//
//  HLUserVC.m
//  HLMagazine
//
//  Created by huaxianwei on 16/5/22.
//  Copyright © 2016年 Jim. All rights reserved.
//

#import "HLUserVC.h"
#import "HLImageView.h"

@interface HLUserVC ()

@end

@implementation HLUserVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationController.navigationBarHidden = YES;
    NSBundle *bundle=[NSBundle mainBundle];
    NSArray *objs=[bundle loadNibNamed:@"HLImageView" owner:nil options:nil];
    
    HLImageView *im = [objs lastObject];
    NSLog(@"%@",im);
    im.frame = CGRectMake(10, 50, 100, 100);
    im.backgroundColor = [UIColor redColor];
    [self.view addSubview:im];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
