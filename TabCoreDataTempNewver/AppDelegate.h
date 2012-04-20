//
//  AppDelegate.h
//  TabCoreDataTempNewver
//
//  Created by 真有 津坂 on 12/04/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//追加、This code is added.
#import "MasterViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    //1つ目のタブのTextFieldに入るデータ
    NSString *fieldData;
    NSString *fieldData2;
}

@property (strong, nonatomic) UIWindow *window;

//以下追加、This code is added.
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic,retain) UITabBarController *tabBarController;
@property (nonatomic,retain) MasterViewController *masterViewController;

@property (strong,nonatomic) NSString *fieldData;
@property (strong,nonatomic) NSString *fieldData2;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
