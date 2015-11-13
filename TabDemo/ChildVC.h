//
//  ChildVC.h
//  TabDemo
//
//  Created by huway_iosdev on 15/11/11.
//  Copyright © 2015年 chend. All rights reserved.
//

#import "XLPagerTabStripViewController.h"
#import <UIKit/UIKit.h>

@interface ChildVC : UIViewController  <XLPagerTabStripChildItem>

@property (nonatomic, strong) NSString *textOfLabel;

@end
