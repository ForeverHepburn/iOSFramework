//
//  ViewController.m
//  iosFramework
//
//  Created by HP on 15/12/14.
//  Copyright © 2015年 iOSUser. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"view";
    UIButton *goButton = [UIButton buttonWithType:UIButtonTypeCustom];
    goButton.frame = CGRectMake(200, 300, 44, 44);
    [goButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [goButton setTitle:@"进入" forState:UIControlStateNormal];
    [goButton addTarget:self action:@selector(goNextViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:goButton];
    
}

- (void)goNextViewController
{
    SecondViewController *secViewController = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
