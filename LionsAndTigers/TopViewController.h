//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Mert Akanay on 18.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

-(void)topRevealButtonTapped:(UIBarButtonItem *)button;

@end

@interface TopViewController : UIViewController

@property id<TopDelegate> delegate;

@property (nonatomic) NSArray *picturesArray;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end
