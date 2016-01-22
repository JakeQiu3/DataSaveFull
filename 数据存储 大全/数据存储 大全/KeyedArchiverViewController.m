//
//  KeyedArchiverViewController.m
//  数据存储 大全
//
//  Created by 邱少依 on 16/1/22.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "KeyedArchiverViewController.h"
#import "Person.h"
//适用对象： NSKeyedArchiver适合所有ObjC对象。自定义对象的也可以用，只要遵守了NSCoding协议，实现了编码和解码方法。

@interface KeyedArchiverViewController ()

@end

@implementation KeyedArchiverViewController
//沙盒路径： /Users/qiushaoyi/Library/Developer/CoreSimulator/Devices/5A26D3BD-FEC6-495F-B315-28910D353BB1/data/Containers/Data/Application/39420F76-B330-45D3-A691-86F4BA20AE05/Documents/
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 200, 30);
    [button setTitle:@"归档" forState:UIControlStateNormal ];
    [button addTarget:self action:@selector(getArchiver:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)getArchiver:(UIButton *)btn {
// 测试1：字符串
    NSArray *filePath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [filePath lastObject];
    NSLog(@"%@",path);
    NSString *pathStr = [path stringByAppendingPathComponent:@"Test"];
//    在document下创建test文件夹
    BOOL res = [[NSFileManager defaultManager] createDirectoryAtPath:pathStr withIntermediateDirectories:YES attributes:nil error:nil];
    if (res) {
        NSLog(@"新的文件夹创建成功");
    }
//    在该文件夹下拼接一个txt文件
    NSString *string = [pathStr stringByAppendingPathComponent:@"字符串.txt"];
    
    NSString *contentStr = @"hello,world";
//    归档数据
    [NSKeyedArchiver archiveRootObject:contentStr toFile:string];
    
    if (![NSKeyedArchiver archiveRootObject:contentStr toFile:string]) {
        NSLog(@"归档失败");
    } else NSLog(@"归档成功");
//    解档
    NSString *getString = [NSKeyedUnarchiver unarchiveObjectWithFile:string];
    NSLog(@"解档getString=%@",getString);
    
 // 测试2 数组
    
    NSString *arrayStr = [pathStr stringByAppendingPathComponent:@"arrray.plist"];
    NSArray *array = [NSArray arrayWithObjects:@"tianxia", @"zhida",@"wodingshengtian",nil];
    [NSKeyedArchiver archiveRootObject:array toFile:arrayStr];
    if (! [NSKeyedArchiver archiveRootObject:array toFile:arrayStr]) {
        NSLog(@"归档失败");
    } else NSLog(@"归档成功");
    
//    解档
    NSArray *getArray = [NSKeyedUnarchiver unarchiveObjectWithFile:arrayStr];
    [getArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"getArray[%lu] = %@",(long)idx,obj);
    }];
    
    
    
    
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
