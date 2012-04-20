//
//  FirstViewController.m
//  TabCoreDataTempNewver
//
//  Created by 真有 津坂 on 12/04/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize textInput;
@synthesize textInput2;

//追加、add
- (void)viewWillAppear:(BOOL)animated {
    //アプリが起動したときにセルのあるタブをあらかじめ選択した状態にしておく。Tabbarはタブを選択して初めてViewが作られるため、アプリ起動後、セルのあるタブをタップしないでセルを追加する場合はこうする必要がある(が、この方法がいいかどうか・・・)
    //セルのあるタブを選択したことにする
    UITabBarController *controller = self.tabBarController;
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 2];
    //0.05秒後に1つ目のタブ(Tab1ViewController)に戻る
    [self performSelector:@selector(delayTab) withObject:nil afterDelay:0.05f];
    
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextInput:nil];
    [self setTextInput2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//ボタンを押すとセルが追加されてTextFieldに入力したテキストがセルに書き込まれる
- (IBAction)add:(id)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.fieldData = textInput.text;
    appDelegate.fieldData2 = textInput2.text;
    //textInputとtextInput2のテキストをMasterViewControllerに送る
    [[NSNotificationCenter defaultCenter] postNotificationName:@"P1" object:self];
}

//1つ目のタブ(Tab1ViewController)に戻る
- (void)delayTab {
    
    UITabBarController *controller = self.tabBarController;
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 0];
    
}

//入力後キーボードを隠す
- (IBAction)keyHide:(id)sender {
    [textInput resignFirstResponder];
}

//入力後キーボードを隠す
- (IBAction)keyHide2:(id)sender {
    [textInput2 resignFirstResponder];
}
@end
