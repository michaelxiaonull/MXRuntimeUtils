#import "NSObject+HandleNullValue.h"
@implementation HandleNullValue

+ (BOOL)isValueEmpty:(id)value {
    
    return !value || [value isEmpty];
}

@end

@implementation NSObject (HandleNullValue)

- (id)safetyValue {
    return [self isEmpty] ? nil : self;
}

- (BOOL)isEmpty {
    return [self compareWithClassType:[self class]];
}

- (BOOL)compareWithClassType:(Class)class {
    
    BOOL result = NO;
    if ([self isMemberOfClass:[NSNull class]]) {
        return YES;
    }
    
    id value = self;
    if ([NSStringFromClass(class) containsString:@"Number"] || [NSStringFromClass(class) containsString:@"Bool"]) {
        
        value = [value stringValue];
        return [value compare:@"0" options:NSNumericSearch] == NSOrderedSame;
    } else if ([NSStringFromClass(class) containsString:@"URL"]) {
        
        value = [value absoluteString];
    } else if ([value respondsToSelector:@selector(count)]) {
        
        return ![value count];
    }
    result = [NSStringFromClass([value class]) containsString:@"String"] ? ([value isEqualToString:@"null"] ?: ![value length]) : NO;
    
    return result;
}


@end
