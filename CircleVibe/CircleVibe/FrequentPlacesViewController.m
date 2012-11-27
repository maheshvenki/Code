//
//  FrequentPlacesViewController.m
//  CircleVibe
//
//  Created by Mahesh Venkitachelam on 27/11/12.
//  Copyright (c) 2012 Mahesh Venkitachelam. All rights reserved.
//

#import "FrequentPlacesViewController.h"

@interface FrequentPlacesViewController ()

@end

@implementation FrequentPlacesViewController

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

-(void)viewWillAppear:(BOOL)animated
{
    _scrollView.contentSize = CGSizeMake(SCROLLVIEW_CONTENT_WIDTH, SCROLLVIEW_CONTENT_HEIGHT);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [self setContentView:nil];
    [self setBtn1:nil];
    [self setFoodBtn:nil];
    [self setBtn2:nil];
    [self setCoffeeBtn:nil];
    [self setBtn3:nil];
    [self setNightlifeBtn:nil];
    [self setBtn4:nil];
    [self setShoppingBtn:nil];
    [self setBtn5:nil];
    [self setArtsBtn:nil];
    [self setOutdoorsBtn:nil];
    [self setBtn6:nil];
    [self setCollegeBtn:nil];
    [self setBtn7:nil];
    [self setResidenceBtn:nil];
    [self setBtn8:nil];
    [self setProfessionalBtn:nil];
    [self setBtn9:nil];
    [super viewDidUnload];
}
- (IBAction)SelectPlaces:(id)sender
{
    UIButton *button = (UIButton *)sender;
    switch ([sender tag])
    {
        case 100:
            if(_btn1.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn1.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn1.selected = YES;
            }
            break;
        case 101:
            if(_btn2.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn2.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn2.selected = YES;
            }
            break;
        case 102:
            if(_btn3.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn3.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn3.selected = YES;
            }
            break;
        case 103:
            if(_btn4.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn4.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn4.selected = YES;
            }
            break;
        case 104:
            if(_btn5.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn5.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn5.selected = YES;
            }
            break;
        case 105:
            if(_btn6.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn6.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn6.selected = YES;
            }
            break;
        case 106:
            if(_btn7.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn7.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn7.selected = YES;
            }
            break;
        case 107:
            if(_btn8.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn8.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn8.selected = YES;
            }
            break;
        case 108:
            if(_btn9.selected)
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana" size:14];
                _btn9.selected = NO;
            }
            else
            {
                button.titleLabel.font = [UIFont fontWithName:@"Verdana-Bold" size:14];
                _btn9.selected = YES;
            }
            break;
        default:
            break;
    }
}

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
