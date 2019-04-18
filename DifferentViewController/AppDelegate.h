//
//  AppDelegate.h
//  DifferentViewController
//
//  Created by 郑少玲 on 2019/4/17.
//  Copyright © 2019 郑少玲. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

