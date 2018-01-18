//
//  MXRuntimeUtils+Extension.m
//  Yunlu
//
//  Created by Michael on 2018/1/9.
//  Copyright © 2018年 DCloud. All rights reserved.
//

#import "MXRuntimeUtils+Extension.h"
#import "NSObject+HandleNullValue.h"

@implementation MXRuntimeUtils (Extension)

#pragma mark - for protocol
+ (id)getIdValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {

   __autoreleasing id idValue = nil;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&idValue];
    NSAssert(!isRequired || ![HandleNullValue isValueEmpty:idValue], @"property %@ with `@required` cannot be nil!", propertyName);
    return idValue;
}

+ (CGSize)getCGSizeValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    CGSize size = CGSizeZero;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&size];
    NSAssert(!isRequired || !CGSizeEqualToSize(size, CGSizeZero), @"property %@ with `@required` cannot be CGSizeZero!", propertyName);
    return size;
}

+ (CGPoint)getCGPointValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    CGPoint point = CGPointZero;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&point];
    NSAssert(!isRequired || !CGPointEqualToPoint(point, CGPointZero), @"property %@ with `@required` cannot be CGPointZero!", propertyName);
    return point;
}

+ (UIEdgeInsets)getUIEdgeInsetsValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    UIEdgeInsets insets = UIEdgeInsetsZero;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&insets];
    NSAssert(!isRequired || !UIEdgeInsetsEqualToEdgeInsets(insets, UIEdgeInsetsZero), @"property %@ with `@required` cannot be UIEdgeInsetsZero!", propertyName);
    return insets;
}

+ (double)getDoubleValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    double doubleValue = 0.0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&doubleValue];
    NSAssert(!isRequired || doubleValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return doubleValue;
}

+ (float)getFloatValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    float floatValue = 0.0f;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&floatValue];
    NSAssert(!isRequired || floatValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return floatValue;
}

+ (int)getIntValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    int intValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&intValue];
    NSAssert(!isRequired || intValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return intValue;
}

+ (long)getLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    long longValue = 0l;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&longValue];
    NSAssert(!isRequired || longValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return longValue;
}

+ (long long)getLongLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    long long longLongValue = 0ll;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&longLongValue];
    NSAssert(!isRequired || longLongValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return longLongValue;
}

+ (short)getShortValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    short shortValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&shortValue];
    NSAssert(!isRequired || shortValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return shortValue;
}

+ (char)getCharValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    char charValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&charValue];
    NSAssert(!isRequired || charValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return charValue;
}

+ (BOOL)getBoolValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    bool boolValue = NO;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&boolValue];
    NSAssert(!isRequired || boolValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return boolValue;
}

+ (unsigned char)getUnsignedCharValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    unsigned char unsignedCharValue = NO;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&unsignedCharValue];
    NSAssert(!isRequired || unsignedCharValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return unsignedCharValue;
}

+ (unsigned int)getUnsignedIntValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    unsigned int unsignedIntValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&unsignedIntValue];
    NSAssert(!isRequired || unsignedIntValue, @"property %@ with `@required` cannot be  0!", propertyName);
    
    return unsignedIntValue;
}

+ (unsigned long)getUnsignedLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    unsigned long unsignedLongValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&unsignedLongValue];
    NSAssert(!isRequired || unsignedLongValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return unsignedLongValue;
}

+ (unsigned long long)getUnsignedLongLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    unsigned long long unsignedLongLongValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&unsignedLongLongValue];
    NSAssert(!isRequired || unsignedLongLongValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return unsignedLongLongValue;
}

+ (unsigned short)getUnsignedShortValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired {
    unsigned short unsignedShortValue = 0;
    [self getPropertyValueInProtocolImplementedByObject:target propertyName:propertyName isPropertyRequired:isRequired returnValuePtr:&unsignedShortValue];
    NSAssert(!isRequired || unsignedShortValue, @"property %@ with `@required` cannot be  0!", propertyName);
    return unsignedShortValue;
}

+ (void)getPropertyValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired returnValuePtr:(void *)returnValuePtr {
    SEL selector = NSSelectorFromString(propertyName);
    if (![target respondsToSelector:selector]) {
        if (isRequired) {
            NSAssert(!isRequired, @"property %@ with `@required` must implement!", propertyName);
        }
    } else {
        [MXRuntimeUtils callMethodWithTarget:target selector:selector argumemts:nil returnValue:returnValuePtr];
    }
}

@end
