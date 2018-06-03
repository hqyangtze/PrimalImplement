//
//  NSObject+OriginIMP.h
//  PrimalImplement
//
//  Created by H Q on 2018/3/25.
//  Copyright © 2018年 hqyangtze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PrimalIMP)



/**  YYKit <https://github.com/ibireme/YYKit>
 Sends a specified message to the receiver and returns the result of the message,ignore catagory implement.
 
 @param sel    A selector identifying the message to send. If the selector is
 NULL or unrecognized, an NSInvalidArgumentException is raised.
 
 @param ...    Variable parameter list. Parameters type must correspond to the
 selector's method declaration, or unexpected results may occur.
 It doesn't support union or struct which is larger than 256 bytes.
 
 @return       An object that is the result of the message.
 
 @discussion   The selector's return value will be wrap as NSNumber or NSValue
 if the selector's `return type` is not object. It always returns nil
 if the selector's `return type` is void.
 
 Sample Code:
 
 // no variable args
 [view performSelectorWithArgs:@selector(removeFromSuperView)];
 
 // variable arg is not object
 [view performSelectorWithArgs:@selector(setCenter:), CGPointMake(0, 0)];
 
 // perform and return object
 UIImage *image = [UIImage.class performSelectorWithArgs:@selector(imageWithData:scale:), data, 2.0];
 
 // perform and return wrapped number
 NSNumber *lengthValue = [@"hello" performSelectorWithArgs:@selector(length)];
 NSUInteger length = lengthValue.unsignedIntegerValue;
 
 // perform and return wrapped struct
 NSValue *frameValue = [view performSelectorWithArgs:@selector(frame)];
 CGRect frame = frameValue.CGRectValue;
 */
- (id)pi_performSelectorWithArgs:(SEL)sel, ...;

@end
