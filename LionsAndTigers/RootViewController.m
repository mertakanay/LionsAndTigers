//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Mert Akanay on 18.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"


@interface RootViewController () <TopDelegate, HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraintForTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraintForTop;


@property (nonatomic) NSArray *photosArray;



@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *lionsImages = @[[UIImage imageNamed:@"lion1"],
                             [UIImage imageNamed:@"lion2"],
                             [UIImage imageNamed:@"lion3"]];

    NSArray *tigerimages = @[[UIImage imageNamed:@"tiger1"],
                             [UIImage imageNamed:@"tiger2"],
                             [UIImage imageNamed:@"tiger3"]];
    
}

-(void)topRevealButtonTapped:(UIBarButtonItem *)button
{


    self.leftConstraintForTop.constant += 100;
    self.rightConstraintForTop.constant += 100;

}


@end
