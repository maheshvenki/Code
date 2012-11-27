//
//  EmailConfirmViewController.m
//  CircleVibe
//
//  Created by Mahesh Venkitachelam on 27/11/12.
//  Copyright (c) 2012 Mahesh Venkitachelam. All rights reserved.
//

#import "EmailConfirmViewController.h"

@interface EmailConfirmViewController ()

@end

@implementation EmailConfirmViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
