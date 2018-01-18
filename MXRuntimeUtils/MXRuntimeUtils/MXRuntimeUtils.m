//
//  MXRuntimeHelper.m
//  1227 - TestProfiling
//
//  Created by Michael on 2017/12/31.
//  Copyright © 2017年 Michael. All rights reserved.
//

#import "MXRuntimeUtils.h"
#import <UIKit/UIKit.h>
#import <objc/message.h>
#import "MXRuntimeUtils+Extension.h"

@implementation MXRuntimeUtils

+ (void)assertWithArgument:(id)arg testSelector:(SEL)testSelector expectedArgumentType:(char *)expectedArgumentType {
    NSAssert([arg respondsToSelector:testSelector], @"please pass right argument type, expect type is %s, but you pass type is %@", expectedArgumentType, arg);
}

+ (void)passIdTypeArgument:(id)arg argLocPtr:(void **)argLocPtr methodSignatureArgumentType:(const char *)type {
    
    if (strcmp(type, @encode(id)) == 0) {
        
        size_t byteLength = sizeof(arg);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&arg, byteLength);
    } else if (strcmp(type, @encode(CGPoint)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(CGPointValue) expectedArgumentType:"CGPoint"];
        CGPoint temp = [arg CGPointValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(CGSize)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(CGSizeValue) expectedArgumentType:"CGSize"];
        CGSize temp = [arg CGSizeValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(UIEdgeInsets)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(UIEdgeInsetsValue) expectedArgumentType:"UIEdgeInsets"];
        UIEdgeInsets temp = [arg UIEdgeInsetsValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(double)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(doubleValue) expectedArgumentType:"double"];
        double temp = [arg doubleValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(float)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(floatValue) expectedArgumentType:"float"];
        float temp = [arg floatValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(int)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(intValue) expectedArgumentType:"int"];
        int temp = [arg intValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(long)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(longValue) expectedArgumentType:"long"];
        long temp = [arg longValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(long long)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(longLongValue) expectedArgumentType:"longLong"];
        long long temp = [arg longLongValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(short)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(shortValue) expectedArgumentType:"short"];
        short temp = [arg shortValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(char)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(charValue) expectedArgumentType:"char"];
        char temp = [arg charValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(bool)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(boolValue) expectedArgumentType:"bool"];
        bool temp = [arg boolValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(unsigned char)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(unsignedCharValue) expectedArgumentType:"unsignedChar"];
        unsigned char temp = [arg unsignedCharValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(unsigned int)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(unsignedIntValue) expectedArgumentType:"unsignedInt"];
        unsigned int temp = [arg unsignedIntValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(unsigned long)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(unsignedLongValue) expectedArgumentType:"unsignedLong"];
        unsigned long temp = [arg unsignedLongValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(unsigned long long)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(unsignedLongLongValue) expectedArgumentType:"unsignedLongLong"];
        unsigned long long temp = [arg unsignedLongLongValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, @encode(unsigned short)) == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(unsignedShortValue) expectedArgumentType:"unsignedShort"];
        unsigned short temp = [arg unsignedShortValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else if (strcmp(type, "^") == 0) {
        
        [self assertWithArgument:arg testSelector:@selector(pointerValue) expectedArgumentType:"pointer"];
        void *temp = [arg pointerValue];
        size_t byteLength = sizeof(temp);
        *argLocPtr = malloc(byteLength);
        memcpy(*argLocPtr, (void *)&temp, byteLength);
    } else {
        *argLocPtr = malloc(sizeof(char));
    }
}

+ (void)callMethodWithTarget:(id)target selector:(SEL)sel argumemts:(NSArray<id> *)arguments returnValue:(void *)returnValue {
    
    BOOL canTargetRespondsToSelector = [target respondsToSelector:sel], isTargetClass = object_isClass(target);
    if (![target respondsToSelector:sel]) {
        
        //NOTE: instance can call its class method, but class cannot call its instace method
        if ([[target class] respondsToSelector:sel]) {
            canTargetRespondsToSelector = YES;
            target = [target class];
        }
    }
    NSAssert(canTargetRespondsToSelector, @"please pass right selector which target can respond to, '%@ [%@ %@] is wrong'", isTargetClass ? @"+" : @"-", [target class], NSStringFromSelector(sel));
    
    NSMethodSignature *methodSignature = [target methodSignatureForSelector:sel];
    NSUInteger numberOfArguments = methodSignature.numberOfArguments;
    void **argLocs = malloc(sizeof(void *) * (numberOfArguments - 2));
    /*BOOL frameLength = methodSignature.frameLength;
     BOOL oneWay = methodSignature.isOneway;
     const char *methodReturnType = methodSignature.methodReturnType;
     NSUInteger methodReturnLength = methodSignature.methodReturnLength;*/
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
    //[invocation retainArguments];
    invocation.target = target;
    invocation.selector = sel;
    for (int i = 0; i < numberOfArguments - 2; i++) {
        
        id idArg = arguments[i];
        const char *argType = [methodSignature getArgumentTypeAtIndex:i + 2];
        //NSLog(@"%s", argType);
        
        //method 1, copy contents from the address of argument
        void **argLocPtr = &argLocs[i];
        [self passIdTypeArgument:idArg argLocPtr:argLocPtr methodSignatureArgumentType:argType];
        
        //method 2, copy address of argument directly, but not all argument is type of id, so we should encapsulate it intp a method
        //argLocs[i - 2] = &arg;
        [invocation setArgument:*argLocPtr atIndex:i + 2];
    }
    
    //void *returnvalue = NULL;
    //[invocation setReturnValue:&returnvalue];
    [invocation invoke];
    if (returnValue) [invocation getReturnValue:returnValue];
    
    //free the memory in stack which every pointer of `argLocs` point
    for (int i = 0; i < numberOfArguments - 2; i++) {
        !argLocs[i] ?: free(argLocs[i]);
        argLocs[i] = NULL;
    }
    //free the memory in the stack which pointer array point
    !argLocs ?: free(argLocs);
    argLocs = NULL;
}

@end
