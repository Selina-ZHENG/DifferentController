//
//  TabBarController.m
//  DifferentViewController
//
//  Created by 郑少玲 on 2019/4/17.
//  Copyright © 2019 郑少玲. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController
+ (instancetype)createdByViewControllerArray:(NSArray *)viewControllers tabBarItemAttributes:(NSArray *)tabBarItemAttributes{
    TabBarController *tabBarCtrl = [[TabBarController alloc]init];
    
    NSInteger count = viewControllers.count;
    for (NSInteger i = 0; i < count; i++) {
        UIViewController *vc = viewControllers[i];
        
        NSDictionary *itemAttri = tabBarItemAttributes[i];
        //设置tabbaritem标题
        vc.tabBarItem.title = [itemAttri objectForKey:@"title"];
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
        //设置tabbaritem的选中图片和未选中图片
        UIImage *image = [itemAttri objectForKey:@"image"];
        vc.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        UIImage *selectedImage = [itemAttri objectForKey:@"selectedImage"];
        vc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [tabBarCtrl addChildViewController:vc];
    }
    return tabBarCtrl;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
