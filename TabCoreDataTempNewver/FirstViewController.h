//
//  FirstViewController.h
//  TabCoreDataTempNewver
//
//  Created by 真有 津坂 on 12/04/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UITextField *textInput2;

//セルを作る
- (IBAction)add:(id)sender;

//キーボードを隠す
- (IBAction)keyHide:(id)sender;
- (IBAction)keyHide2:(id)sender;


@end
