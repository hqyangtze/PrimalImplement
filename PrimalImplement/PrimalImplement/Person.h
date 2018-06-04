//
//  Person.h
//  PrimalImplement
//
//  Created by H Q on 2018/3/25.
//  Copyright © 2018年 hqyangtze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign) NSInteger age;

+ (void)classMethodTest;

@end
