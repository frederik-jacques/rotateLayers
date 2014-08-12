//
//  LEOViewController.m
//  rotationLayers
//
//  Created by Frederik Jacques on 12/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "LEOViewController.h"

@interface LEOViewController ()

@end

@implementation LEOViewController


- (void)loadView {
    CGRect bounds = [UIScreen mainScreen].bounds;
    
    self.view = [[LEOMainView alloc] initWithFrame:bounds];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
