//
//  NSObjectViewController.m
//  数据存储 大全
//
//  Created by qsyMac on 16/1/24.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "NSObjectViewController.h"

@interface NSObjectViewController ()

@end

@implementation NSObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 200, 30);
    [button setTitle:@"Foundation框架" forState:UIControlStateNormal ];
    [button addTarget:self action:@selector(getFoundation:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void)getFoundation:(UIButton *)btn {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
