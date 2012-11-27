//
//  SignUpViewController.m
//  CircleVibe
//
//  Created by Mahesh Venkitachelam on 26/11/12.
//  Copyright (c) 2012 Mahesh Venkitachelam. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

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
    _malebtn.selected = YES;
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"Registering for keyboard events");
    
    // Register for the events
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector (keyboardDidShow:)
     name: UIKeyboardDidShowNotification
     object:nil];
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector (keyboardDidHide:)
     name: UIKeyboardDidHideNotification
     object:nil];
    // Setup content size
    _scrollView.contentSize = CGSizeMake(SCROLLVIEW_CONTENT_WIDTH, SCROLLVIEW_CONTENT_HEIGHT);
    x = _scrollView.frame.origin.x;
    y = _scrollView.frame.origin.y;
}

-(void) keyboardDidShow: (NSNotification *)notif
{
    // If keyboard is visible, return
    if (keyboardVisible) {
        NSLog(@"Keyboard is already visible. Ignore notification.");
        return;
    }
    
    // Get the size of the keyboard.
    NSDictionary* info = [notif userInfo];
    NSValue* aValue = [info objectForKey:UIKeyboardBoundsUserInfoKey];
    CGSize keyboardSize = [aValue CGRectValue].size;
    
    // Save the current location so we can restore
    // when keyboard is dismissed
    offset = _scrollView.contentOffset;
    
    // Resize the scroll view to make room for the keyboard
    CGRect viewFrame = _scrollView.frame;
    viewFrame.size.height -= keyboardSize.height;
    _scrollView.frame = viewFrame;
    
    
    
    CGRect textFieldRect = [activeField frame];
    textFieldRect.origin.y += 10;
    [_scrollView scrollRectToVisible:textFieldRect animated:YES];
    // Keyboard is now visible
    keyboardVisible = YES;
}

-(void) keyboardDidHide: (NSNotification *)notif {
    // Is the keyboard already shown
    if (!keyboardVisible) {
        NSLog(@"Keyboard is already hidden. Ignore notification.");
        return;
    }
    
    // Reset the frame scroll view to its original value
    _scrollView.frame = CGRectMake(0, 0, SCROLLVIEW_CONTENT_WIDTH, 460);
    _scrollView.contentOffset = offset;
//    _contentView.frame = CGRectMake(0, offset.y, SCROLLVIEW_CONTENT_WIDTH, SCROLLVIEW_CONTENT_HEIGHT);
    // Keyboard is no longer visible
    keyboardVisible = NO;
    
}

-(BOOL) textFieldShouldBeginEditing:(UITextField*)textField {
    activeField = textField;
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void) viewWillDisappear:(BOOL)animated {
    NSLog (@"Unregister for keyboard events");
    [[NSNotificationCenter defaultCenter]
     removeObserver:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setMalebtn:nil];
    [self setFemalebtn:nil];
    [self setScrollView:nil];
    [self setContentView:nil];
    [self setCofirmView:nil];
    [super viewDidUnload];
}
- (IBAction)GenderSelected:(id)sender
{
    if(_malebtn.selected)
    {
        _malebtn.selected = NO;
        _femalebtn.selected = YES;
    }
    else if(_femalebtn.selected)
    {
        _malebtn.selected = YES;
        _femalebtn.selected = NO;
    }
}
- (IBAction)Done:(id)sender
{
   _cofirmView.hidden = NO;
}

- (IBAction)Confirm:(id)sender
{
    if([sender tag] == 100)
    {
        _cofirmView.hidden = YES;
        [self performSegueWithIdentifier:@"signup2" sender:self];
    }
    else
    {
        _cofirmView.hidden = YES;
    }
}

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
