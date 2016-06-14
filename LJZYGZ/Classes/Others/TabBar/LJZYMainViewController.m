//
//  LJZYMainViewController.m
//  ceshi
//
//  Created by 皇朝 on 16/6/13.
//  Copyright © 2016年 皇朝. All rights reserved.
//

#import "LJZYMainViewController.h"
#import "LJZYHomeViewController.h"
#import "LJZYOrderViewController.h"
#import "LJZYMineViewController.h"
#import "AppDefine.h"

@interface LJZYMainViewController ()

@end

@implementation LJZYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewController];
}

- (void)addChildViewController {
    [self addChildViewController:@"LJZYHomeViewController" imageName:@"" title:@"首页"];
    [self addChildViewController:@"LJZYOrderViewController" imageName:@"" title:@"订单"];
    [self addChildViewController:@"LJZYMineViewController" imageName:@"" title:@"我的"];
}

- (void)addChildViewController:(NSString *)controllerName
                     imageName:(NSString *)imageName
                         title:(NSString *)title {
    UIViewController *controller = [[NSClassFromString(controllerName) alloc] init];
    controller.title = title;
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:imageName];
    //设置渲染模式
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置tabBarItem文字颜色
//    [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : LJZY_COLOR} forState:UIControlStateSelected];
    self.tabBar.tintColor = LJZY_COLOR;
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:controller]];
}

@end
