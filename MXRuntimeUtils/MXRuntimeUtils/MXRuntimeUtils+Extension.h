//
//  MXRuntimeUtils+Extension.h
//  Yunlu
//
//  Created by Michael on 2018/1/9.
//  Copyright © 2018年 DCloud. All rights reserved.
//

#import "MXRuntimeUtils.h"
#import <UIKit/UIKit.h>

@interface MXRuntimeUtils (Extension)

+ (id)getIdValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (CGSize)getCGSizeValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (CGPoint)getCGPointValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (UIEdgeInsets)getUIEdgeInsetsValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (double)getDoubleValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (float)getFloatValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (int)getIntValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (long)getLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (long long)getLongLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (short)getShortValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (char)getCharValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (BOOL)getBoolValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (unsigned char)getUnsignedCharValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (unsigned int)getUnsignedIntValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (unsigned long)getUnsignedLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

+ (unsigned long long)getUnsignedLongLongValueInProtocolImplementedByObject:(NSObject *)target propertyName:(NSString *)propertyName isPropertyRequired:(BOOL)isRequired;

@end
