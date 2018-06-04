//
//  ViewController.m
//  PrimalImplement
//
//  Created by H Q on 2018/3/25.
//  Copyright © 2018年 hqyangtze. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+PrimalIMP.h"
#import "Person+Test.h"
#import "GoodPerson+Test.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"/* ------------- GoodPerson --------------- */");
    GoodPerson* goodP = [GoodPerson new];
    goodP.name = @"goodPerson";
    [goodP pi_performSelectorWithArgs:@selector(setName:),@"test_goodPerson"];
    [goodP pi_performSelectorWithArgs:@selector(setAge:),80];
    goodP.age = 90;
    [GoodPerson classMethodTest];
    [GoodPerson pi_performSelectorWithArgs:@selector(classMethodTest)];
    /*{
        Method setName = class_getInstanceMethod([goodP class], @selector(pi_origin__setName:));
        Method setAge = class_getInstanceMethod([goodP class], @selector(pi_origin__setAge:));
        NSLog(@"setName:  %p",setName);
        NSLog(@"setAge:  %p",setAge);
        [goodP pi_performSelectorWithArgs:@selector(setAgeERROR)];
    }*/
    NSLog(@"/* ------------- GoodPerson --------------- */");
    
    NSLog(@"/* ------------- Person --------------- */");
    Person* p = [Person new];
    p.name = @"init";
    
    [p pi_performSelectorWithArgs:@selector(setName:),@"test_name"];
    [p pi_performSelectorWithArgs:@selector(setAge:),25];
    p.age = 26;
    /*{
        Method setName = class_getInstanceMethod([p class], @selector(pi_origin__setName:));
        Method setAge = class_getInstanceMethod([p class], @selector(pi_origin__setAge:));
        NSLog(@"setName:  %p",setName);
        NSLog(@"setAge:  %p",setAge);
        
    }*/
    NSLog(@"/* ------------- Person --------------- */");
}


@end
