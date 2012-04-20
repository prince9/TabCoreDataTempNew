//
//  DetailViewController.m
//  TabCoreDataTempNewver
//
//  Created by 真有 津坂 on 12/04/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
@synthesize detailDescriptionLabel;
@synthesize myLabel;
@synthesize myLabel2;

//追加、This code is added.
@synthesize detailItem = _detailItem;
@synthesize myStr;
@synthesize myStr2;
@synthesize myStr3;

//以下追加、This code is added.
- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


- (void)configureView
{
    /*
     // Update the user interface for the detail item.
     if (self.detailItem) {
     self.detailDescriptionLabel.text = [self.detailItem description];
     }
     */
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    myLabel.text = myStr;
    detailDescriptionLabel.text = myStr2;
    myLabel2.text = myStr3;
}

- (void)viewDidUnload
{
    [self setDetailDescriptionLabel:nil];
    [self setMyLabel:nil];
    [self setMyLabel2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
