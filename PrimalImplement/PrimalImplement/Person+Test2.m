//
//  Person+Test2.m
//  PrimalImplement
//
//  Created by H Q on 2018/6/4.
//  Copyright © 2018年 hqyangtze. All rights reserved.
//

#import "Person+Test2.h"

@implementation Person (Test2)
- (void)setName:(NSString *)name{
    NSLog(@"%s",__func__);
}

- (void)setAge:(NSInteger)age{
    NSLog(@"%s",__func__);
}
@end
