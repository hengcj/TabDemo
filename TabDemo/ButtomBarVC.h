//
//  ButtomBarVC.h
//  TabDemo
//
//  Created by huway_iosdev on 15/11/11.
//  Copyright © 2015年 chend. All rights reserved.
//

#import "XLButtonBarPagerTabStripViewController.h"

@interface ButtomBarVC : XLButtonBarPagerTabStripViewController

- (nullable instancetype)initButtomBarVCWith:(nullable NSArray *)VCs;

@property(nullable, nonatomic,copy) NSArray<__kindof UIViewController *> *viewControllers;

@end
