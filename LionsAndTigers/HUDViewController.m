//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Mert Akanay on 18.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (IBAction)onPictureButtonTapped:(UIButton *)sender
{
    [self.delegate shouldShowPicturesOnButtonTapped:sender];
}


- (void)viewDidLoad {
    [super viewDidLoad];

}




@end
