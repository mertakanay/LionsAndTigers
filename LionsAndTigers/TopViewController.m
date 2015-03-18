//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Mert Akanay on 18.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController () <UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation TopViewController


- (IBAction)onLeftBarButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate topRevealButtonTapped:sender];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

}



@end
