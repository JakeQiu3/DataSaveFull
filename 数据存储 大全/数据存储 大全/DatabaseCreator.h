//
//  DatabaseCreator.h
//  数据存储 大全
//
//  Created by 邱少依 on 16/1/25.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DatabaseCreator : NSObject

/*
 * 初始化数据库：若没有数据，执行sqlite查询语句
 */
+ (void)initDatabase;
@end
