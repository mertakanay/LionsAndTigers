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
@property (weak, nonatomic) IBOutlet UIView *containerTop;
@property NSArray *lionsImages;
@property NSArray *tigersImages;
@property TopViewController *topVC;



@property (nonatomic) NSArray *photosArray;



@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.lionsImages = @[[UIImage imageNamed:@"lion1"],[UIImage imageNamed:@"lion2"],[UIImage imageNamed:@"lion3"]];

    self.tigersImages = @[[UIImage imageNamed:@"tiger1"],[UIImage imageNamed:@"tiger2"],[UIImage imageNamed:@"tiger3"]];
    
}

-(void)topRevealButtonTapped:(UIBarButtonItem *)button
{

    self.leftConstraintForTop.constant = 84;
    self.rightConstraintForTop.constant = -116;


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"segueToTopVC"])
    {
        UINavigationController *navVC = [segue destinationViewController];
        for (UIViewController *vc in navVC.childViewControllers)
        {
            if ([vc isKindOfClass:[TopViewController class]]) {
                self.topVC = (TopViewController *)vc;
                break;
            }
        }
        self.topVC.delegate = self;


    }else if ([segue.identifier isEqualToString:@"segueToHUDVC"])
    {
        HUDViewController *hudVC = [segue destinationViewController];
        hudVC.delegate = self;
        
    }
}

-(void)shouldShowPicturesOnButtonTapped:(UIButton *)button
{
    if ([button.titleLabel.text isEqualToString:@"Lions"])
    {
        self.photosArray = self.lionsImages;
    }else if ([button.titleLabel.text isEqualToString:@"Tigers"])
    {
        self.photosArray = self.tigersImages;
    }

    self.topVC.picturesArray = self.photosArray;

    [self.topVC.collectionView reloadData];
}


@end
