//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Mert Akanay on 18.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

-(void)shouldShowPicturesOnButtonTapped:(UIButton *)button;

@end

@interface HUDViewController : UIViewController

@property id<HUDDelegate> delegate;

@end
