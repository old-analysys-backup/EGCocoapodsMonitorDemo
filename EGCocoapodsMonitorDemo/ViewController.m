//
//  ViewController.m
//  EGCocoapodsMonitorDemo
//
//  Created by analysys on 2016/12/28.
//  Copyright © 2016年 analysys. All rights reserved.
//

#import "ViewController.h"
#import "EGMonitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [EGMonitor beginLogPageView:NSStringFromClass([self class]) contentTag:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    [EGMonitor endLogPageView:NSStringFromClass([self class]) contentTag:nil];
    
}


@end
