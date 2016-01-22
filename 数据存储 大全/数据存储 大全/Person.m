//
//  Person.m
//  数据存储 大全
//
//  Created by 邱少依 on 16/1/22.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:[NSNumber numberWithInt:self.age] forKey:@"age"];
    [aCoder encodeObject:[NSNumber numberWithFloat:self.height] forKey:@"height"];
    [aCoder encodeObject:self.birthday forKey:@"birthday"];

}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [[aDecoder decodeObjectForKey:@"age"] intValue];
        self.height = [[aDecoder decodeObjectForKey:@"height"] floatValue];
        self.birthday = [aDecoder decodeObjectForKey:@"birthday"];
    }
    return self;
}

@end
