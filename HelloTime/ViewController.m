//
//  ViewController.m
//  HelloTime
//
//  Created by Mark Pleskac on 10/19/14.
//  Copyright (c) 2014 Mark Pleskac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    [self checkTime:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)checkTime:(id)sender{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    [self.timeLabel setText:[formatter stringFromDate:[NSDate date]]];
    
    //recurse
    [self performSelector:@selector(checkTime:) withObject:self afterDelay:1.0];
}

- (IBAction)toggleNight:(id)sender {
    if ([self.nightButton.titleLabel.text isEqualToString:@"Night Mode"]){
        [self.timeLabel setTextColor:[UIColor whiteColor]];
        self.view.backgroundColor = [UIColor blackColor];
        [self.nightButton setTitle:@"Day Mode" forState:UIControlStateNormal];
    }
    else{
        [self.timeLabel setTextColor:[UIColor blackColor]];
        self.view.backgroundColor = [UIColor whiteColor];
        [self.nightButton setTitle:@"Night Mode" forState:UIControlStateNormal];
    }

}

-(void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    if(size.height > size.width){
        //portrait
        NSLog(@"Switch to portrait");
    }
    else{
        //landscape
        NSLog(@"Switch to landscape");
    }
}



@end
