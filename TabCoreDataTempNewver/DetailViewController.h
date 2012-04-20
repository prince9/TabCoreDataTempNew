//
//  DetailViewController.h
//  TabCoreDataTempNewver
//
//  Created by 真有 津坂 on 12/04/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    NSString *myStr;
    NSString *myStr2;
    NSString *myStr3;
}
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UILabel *myLabel2;

//追加、This code is added. 
@property (strong, nonatomic) id detailItem;
@property (nonatomic,retain) NSString *myStr;
@property (nonatomic,retain) NSString *myStr2;
@property (nonatomic,retain) NSString *myStr3;
@end
