//
//  MXRuntimeHelper.h
//  1227 - TestProfiling
//
//  Created by Michael on 2017/12/31.
//  Copyright © 2017年 Michael. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  #define call(...) objc_msgSend(__VA_ARGS__)
 * this macro has unstablility sometimes when system version changes, so use method + [MXRuntimeUtils callWithTarget:selector:argumemts:returnValue:] below
 */
//example: id a = call(self, @selector(test:intValue:floatValue:size:), UIEdgeInsetsMake(10, 10, 100, 1), 100, 900.8f, CGSizeMake(10, 10));

@interface MXRuntimeUtils : NSObject

+ (void)callMethodWithTarget:(id)target selector:(SEL)sel argumemts:(NSArray<id> *)arguments returnValue:(void *)returnValue;

@end
