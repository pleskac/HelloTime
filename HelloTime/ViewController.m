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
    [self.timeLabel2 setText:[formatter stringFromDate:[NSDate date]]];
    
    //recurse
    [self performSelector:@selector(checkTime:) withObject:self afterDelay:1.0];
}

@end
