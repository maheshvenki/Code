//
//  FrequentPlacesViewController.h
//  CircleVibe
//
//  Created by Mahesh Venkitachelam on 27/11/12.
//  Copyright (c) 2012 Mahesh Venkitachelam. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCROLLVIEW_CONTENT_HEIGHT 509
#define SCROLLVIEW_CONTENT_WIDTH  320

@interface FrequentPlacesViewController : UIViewController
{
    
}
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *foodBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *coffeeBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *nightlifeBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *shoppingBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *artsBtn;
@property (strong, nonatomic) IBOutlet UIButton *outdoorsBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn6;
@property (strong, nonatomic) IBOutlet UIButton *collegeBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn7;
@property (strong, nonatomic) IBOutlet UIButton *residenceBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn8;
@property (strong, nonatomic) IBOutlet UIButton *professionalBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn9;

- (IBAction)SelectPlaces:(id)sender;
- (IBAction)Back:(id)sender;


@end
