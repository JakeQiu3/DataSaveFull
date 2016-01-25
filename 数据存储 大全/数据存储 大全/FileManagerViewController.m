//
//  FileManagerViewController.m
//  数据存储 大全
//
//  Created by qsyMac on 16/1/24.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "FileManagerViewController.h"

@interface FileManagerViewController ()

@end

@implementation FileManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 200, 30);
    [button setTitle:@"文件夹使用" forState:UIControlStateNormal ];
    [button addTarget:self action:@selector(FileManage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)FileManage:(UIButton *)btn {
    NSFileManager *fileManager = [NSFileManager defaultManager];
 //获得当前程序所在目录
    NSString *currentPath = [fileManager currentDirectoryPath];
//    在沙盒里，创建新的文件夹目录
    NSArray *fileArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *filePath = [fileArray lastObject];
    NSString *appendPath = [filePath stringByAppendingPathComponent:@"woqu"];
    
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
