//
//  NextPageViewController.m
//  UINavigationController01
//
//  Created by OSX on 6/9/13.
//  Copyright (c) 2013 OSX. All rights reserved.
//

#import "NextPageViewController.h"

#import "LastPageViewController.h"

@interface NextPageViewController ()

@end

@implementation NextPageViewController

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
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithTitle: @"Next"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(nextButtonPressed)];
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithTitle: @"Cancel"
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:@selector(cancelButtonPressed)];
    
    self.navigationItem.rightBarButtonItem = rightBarButton;
    self.navigationItem.leftBarButtonItem =leftBarButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Button Properties

- (void)cancelButtonPressed
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)nextButtonPressed
{
    LastPageViewController *lastPageViewController = [[LastPageViewController alloc] initWithNibName:@"LastPageViewController" bundle:nil];
    
    [self.navigationController pushViewController:lastPageViewController animated:YES];
}

@end
