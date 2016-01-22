//
//  Person.h
//  数据存储 大全
//
//  Created by 邱少依 on 16/1/22.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int age;
@property (nonatomic,assign) float height;
@property (nonatomic,assign) NSDate *birthday;

@end
