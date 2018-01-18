//
//  ViewController.m
//  MXRuntimeUtils
//
//  Created by Michael on 2018/1/18.
//  Copyright © 2018年 Michael. All rights reserved.
//

#import "ViewController.h"
#import "MXRuntimeUtils+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //opps, you may get confused, because `-[NSObject performSelector:withObject:withObject:]] only allow passing two params, and they are all id type, how can you pass basic data type just like BOOL, char, int, float and pass more than two parameters
    //[self performSelector:@selector(testMethodWithIntValue:floatValue:charValue:sizeValue:pointValue:edgeInsetsValue:stringValue:idValue:) withObject:one withObject:two ....];
    
    //don't worry, using `MXRuntimeUtils` instead
    __autoreleasing id returnValue = nil;
    [MXRuntimeUtils callMethodWithTarget:self selector:@selector(testMethodWithIntValue:floatValue:charValue:sizeValue:pointValue:edgeInsetsValue:stringValue:idValue:) argumemts:@[@1, @2.0f, [NSNumber numberWithChar:'3'], [NSValue valueWithCGSize:CGSizeMake(4, 4)], [NSValue valueWithCGPoint:CGPointMake(5, 5)], [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(6, 6, 6, 6)], @"7", @"8"] returnValue:&returnValue];
    NSLog(@"returnValue: %@", returnValue);
}

- (id)testMethodWithIntValue:(int)aIntValue floatValue:(float)aFloatValue charValue:(char)aCharValue sizeValue:(CGSize)aCGSizeValue pointValue:(CGPoint)aCGPointValue edgeInsetsValue:(UIEdgeInsets)anUIEdgeInsetsValue stringValue:(NSString *)aStringValue idValue:(id)anIdValue {
    
    return @[@(aIntValue), @(aFloatValue), @(aCharValue), [NSValue valueWithCGSize:aCGSizeValue], [NSValue valueWithCGPoint:aCGPointValue], [NSValue valueWithUIEdgeInsets:anUIEdgeInsetsValue], aStringValue, anIdValue];
}

@end
