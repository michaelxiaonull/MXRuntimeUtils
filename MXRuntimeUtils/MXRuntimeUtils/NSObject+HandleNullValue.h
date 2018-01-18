//
//  NSObject+HandleNullValue.h
//  HBuilder-Hello
//
//  Created by Michael on 2017/3/1.
//  Copyright © 2017年 DCloud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HandleNullValue : NSObject

+ (BOOL)isValueEmpty:(id)value;

@end

@interface NSObject (HandleNullValue)

- (id)safetyValue;
- (BOOL)isEmpty;

@end
