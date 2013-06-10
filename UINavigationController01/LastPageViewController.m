//
//  LastPageViewController.m
//  UINavigationController01
//
//  Created by OSX on 6/10/13.
//  Copyright (c) 2013 OSX. All rights reserved.
//

#import "LastPageViewController.h"

@interface LastPageViewController ()

@end

@implementation LastPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor blueColor];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithTitle: @"Return"
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:@selector(returnButtonPressed)];
    self.navigationItem.leftBarButtonItem =leftBarButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Button Properties

- (void)returnButtonPressed
{
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

@end
