//
//  ButtomBarVC.m
//  TabDemo
//
//  Created by huway_iosdev on 15/11/11.
//  Copyright © 2015年 chend. All rights reserved.
//

#import "ButtomBarVC.h"
#import "ChildVC.h"
#import "XLButtonBarViewCell.h"

@interface ButtomBarVC ()
{
    BOOL _isReload;
}
@end

@implementation ButtomBarVC

- (nullable instancetype)initButtomBarVCWith:(nullable NSArray *)VCs {
    UIStoryboard * storyboard = [ UIStoryboard storyboardWithName:@"ButtonBar" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
    if (self) {
        self.viewControllers = VCs;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isProgressiveIndicator = YES;
    // Do any additional setup after loading the view.
    [self.buttonBarView.selectedBar setBackgroundColor:[UIColor orangeColor]];
    
    [self.buttonBarView setBackgroundColor:[UIColor grayColor]];
//    [self.buttonBarView.selectedBar setBackgroundColor:[UIColor orangeColor]];
//    [self.navigationController.navigationBar addSubview:self.buttonBarView];
}


#pragma mark - XLPagerTabStripViewControllerDataSource

-(NSArray *)childViewControllersForPagerTabStripViewController:(XLPagerTabStripViewController *)pagerTabStripViewController
{
    
//    ChildVC *child1 = [[ChildVC alloc] init];
//    child1.textOfLabel = @"child1";
//    
//    ChildVC *child2 = [[ChildVC alloc] init];
//    child2.textOfLabel = @"child2";
//    
//    ChildVC *child3 = [[ChildVC alloc] init];
//    child3.textOfLabel = @"child3";
//    
//    ChildVC *child4 = [[ChildVC alloc] init];
//    child4.textOfLabel = @"child4";
//    
//    ChildVC *child5 = [[ChildVC alloc] init];
//    child5.textOfLabel = @"child5";
//    
//    ChildVC *child6 = [[ChildVC alloc] init];
//    child6.textOfLabel = @"child6";
//    return  @[child1, child2, child3, child4, child5, child6];
    
    return self.viewControllers;
}

-(void)reloadPagerTabStripView
{
    _isReload = YES;
    self.isProgressiveIndicator = (rand() % 2 == 0);
    self.isElasticIndicatorLimit = (rand() % 2 == 0);
    [super reloadPagerTabStripView];
}


@end
