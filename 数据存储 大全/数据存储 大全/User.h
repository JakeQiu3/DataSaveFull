//
//  User.h
//  数据存储 大全
//
//  Created by 邱少依 on 16/1/25.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic, copy) NSString *Id;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *screenName;

//Id，name，screenName，profileImageUrl，mbtype，city
@end
