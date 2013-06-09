//
//  ViewController.m
//  UINavigationController01
//
//  Created by OSX on 6/9/13.
//  Copyright (c) 2013 OSX. All rights reserved.
//

#import "ViewController.h"

#import "NextPageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor greenColor];
    
    [self createButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    [super viewWillDisappear:animated];
}

#pragma mark -
#pragma mark Button Properties

- (void)createButton
{
    CGSize screenRect = [[UIScreen mainScreen] bounds].size;
    
    UIButton *nextPageButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [nextPageButton setTitle:@"Next Page" forState:UIControlStateNormal];
    [nextPageButton addTarget:self
                       action:@selector(nextPage)
             forControlEvents:UIControlEventTouchUpInside];
    
    if (screenRect.height > 500) {
        nextPageButton.frame = CGRectMake(100.0, 388.0, 120.0, 40.0);
    }
    
    else {
        nextPageButton.frame = CGRectMake(100.0, 300.0, 120.0, 40.0);
    }
    
    [self.view addSubview:nextPageButton];
}

- (void)nextPage
{
    NextPageViewController *nextViewController = [[NextPageViewController alloc] initWithNibName:@"NextPageViewController" bundle:nil];
    
    [self.navigationController pushViewController:nextViewController animated:YES];
}

@end
