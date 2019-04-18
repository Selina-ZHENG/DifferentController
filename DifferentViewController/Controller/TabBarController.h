//
//  TabBarController.h
//  DifferentViewController
//
//  Created by 郑少玲 on 2019/4/17.
//  Copyright © 2019 郑少玲. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TabBarController : UITabBarController
+(instancetype)createdByViewControllerArray:(NSArray *)viewControllers tabBarItemAttributes:(NSArray *)tabBarItemAttributes;
@end

NS_ASSUME_NONNULL_END