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
    
    NSLog(@"class setName: %@",name);
}

@end
