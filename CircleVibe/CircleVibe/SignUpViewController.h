//
//  SignUpViewController.h
//  CircleVibe
//
//  Created by Mahesh Venkitachelam on 26/11/12.
//  Copyright (c) 2012 Mahesh Venkitachelam. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCROLLVIEW_CONTENT_HEIGHT 510
#define SCROLLVIEW_CONTENT_WIDTH  320

@interface SignUpViewController : UIViewController<UIScrollViewDelegate>
{
    BOOL keyboardVisible;
    CGPoint offset;
    UITextField *activeField;
    int x;
    int y;
}
@property (strong, nonatomic) IBOutlet UIButton *malebtn;
@property (strong, nonatomic) IBOutlet UIButton *femalebtn;
- (IBAction)GenderSelected:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *cofirmView;
- (IBAction)Done:(id)sender;
- (IBAction)Confirm:(id)sender;
- (IBAction)Back:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *contentView;
@end
