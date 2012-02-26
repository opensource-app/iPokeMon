//
//  GameMenuMoveViewController.m
//  Pokemon
//
//  Created by Kaijie Yu on 2/26/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "GameMenuAbstractChildViewController.h"


@interface GameMenuAbstractChildViewController () {
 @private
  UIButton * buttonCancel_;
}

- (void)cancelView;

@property (nonatomic, retain) UIButton * buttonCancel;

@end


@implementation GameMenuAbstractChildViewController

@synthesize buttonCancel = buttonCancel_;

- (void)dealloc
{
  [buttonCancel_ release];
  
  [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)didReceiveMemoryWarning
{
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
  [super loadView];
  
  UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 200.0f)];
  self.view = view;
  [view release];
  [self.view setBackgroundColor:[UIColor blueColor]];
  
  // Create a button for canceling the view
  CGRect buttonCancelFrame = CGRectMake(120.0f, 160.0f, 80.0f, 40.0f);
  buttonCancel_ = [[UIButton alloc] initWithFrame:buttonCancelFrame];
  [buttonCancel_ setBackgroundColor:[UIColor cyanColor]];
  [buttonCancel_ setTitle:@"X" forState:UIControlStateNormal];
  [buttonCancel_ addTarget:self action:@selector(cancelView) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:buttonCancel_];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  
  self.buttonCancel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  // Return YES for supported orientations
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Private Methods

- (void)cancelView
{
  [self.view removeFromSuperview];
}

@end
