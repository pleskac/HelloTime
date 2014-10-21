//
//  ViewController.h
//  HelloTime
//
//  Created by Mark Pleskac on 10/19/14.
//  Copyright (c) 2014 Mark Pleskac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIButton *nightButton;
- (IBAction)toggleNight:(id)sender;



@end

