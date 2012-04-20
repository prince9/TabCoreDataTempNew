//
//  MasterViewController.h
//  TabCoreDataTempNewver
//
//  Created by 真有 津坂 on 12/04/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <QuartzCore/QuartzCore.h>

//UIViewControllerでカスタムTableViewを設置する場合、UITableViewDataSourceとUITableViewDelegateを追加するのを忘れないこと
@interface MasterViewController : UIViewController <NSFetchedResultsControllerDelegate,UITableViewDataSource,UITableViewDelegate>

//セルの中に設置するLabelもしくはImageViewはStoryboardで結びつけないで、Storyboardの「tag」で設定する
@property (weak, nonatomic) IBOutlet UILabel *dateText;
@property (weak, nonatomic) IBOutlet UILabel *subText1;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *subText2;

//追加、This code is added.
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
