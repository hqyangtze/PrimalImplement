//
//  Person.m
//  PrimalImplement
//
//  Created by H Q on 2018/3/25.
//  Copyright © 2018年 hqyangtze. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name{
    _name = name;
    
    NSLog(@"%s",__func__);
}

- (void)setAge:(NSInteger)age{
    _age = age;
    
   NSLog(@"%s",__func__);
}

+ (void)classMethodTest{
    NSLog(@"%s",__func__);
}

@end
