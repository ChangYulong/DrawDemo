//
//  ViewController.m
//  DrawDemo
//
//  Created by shanghaikedu on 16/1/14.
//  Copyright © 2016年 Langmuir. All rights reserved.
//

#import "ViewController.h"
#import "MLView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    MLView * view = [[MLView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    view.backgroundColor = [UIColor yellowColor];
    [view setNeedsDisplay];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
