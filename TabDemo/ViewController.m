//
//  ViewController.m
//  TabDemo
//
//  Created by huway_iosdev on 15/11/11.
//  Copyright © 2015年 chend. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/View+MASAdditions.h>
#import "ReloadExampleViewController.h"
#import "ChildVC.h"

@interface ViewController ()
@property (nonatomic, strong) ReloadExampleViewController *exVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.translucent = NO;

    ChildVC *child1 = [[ChildVC alloc] init];
    child1.textOfLabel = @"child1";
    
    ChildVC *child2 = [[ChildVC alloc] init];
    child2.textOfLabel = @"child2";
    
    ChildVC *child3 = [[ChildVC alloc] init];
    child3.textOfLabel = @"child3";
    
    ChildVC *child4 = [[ChildVC alloc] init];
    child4.textOfLabel = @"child4";
    
    ChildVC *child5 = [[ChildVC alloc] init];
    child5.textOfLabel = @"child5";
    
    ChildVC *child6 = [[ChildVC alloc] init];
    child6.textOfLabel = @"child6";
    NSArray *children = @[child1, child2, child3, child4, child5, child6];
    
    UIStoryboard * storyboard = [ UIStoryboard storyboardWithName:@"ButtonBar" bundle:nil ];
    self.exVC = [storyboard instantiateViewControllerWithIdentifier:@"ReloadExampleViewController"];
    self.exVC.viewControllers = children;
    
    [self.view addSubview:self.exVC.view];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
//    [self.exVC.view mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.top.left.bottom.right.equalTo(self.view);
//    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
