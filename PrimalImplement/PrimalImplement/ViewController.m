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
@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    Person* p = [Person new];
    //p.name = @"init";
    
    [p pi_performSelectorWithArgs:@selector(setName:),@"test_name"];
    
    [p pi_performSelectorWithArgs:@selector(setAge:),25];

}


@end
