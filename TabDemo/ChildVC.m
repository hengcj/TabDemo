//
//  ChildVC.m
//  TabDemo
//
//  Created by huway_iosdev on 15/11/11.
//  Copyright © 2015年 chend. All rights reserved.
//

#import "ChildVC.h"

@interface ChildVC ()

@end

@implementation ChildVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    
    UILabel *label  = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 15)];
    label.text = self.textOfLabel;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XLPagerTabStripViewControllerDelegate

-(NSString *)titleForPagerTabStripViewController:(XLPagerTabStripViewController *)pagerTabStripViewController
{
    return self.textOfLabel;
}

-(UIColor *)colorForPagerTabStripViewController:(XLPagerTabStripViewController *)pagerTabStripViewController
{
    return [UIColor whiteColor];
}

@end
