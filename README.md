***MXRuntimeUtils*** is a replacement for -[NSObject performSelector:object:object:] and it's easy to use !

## What's wrong with -[NSObject performSelector:object:object:]?

if you implementation a method just like codes below

``` Objective-C
- (id)testMethodWithIntValue:(int)aIntValue floatValue:(float)aFloatValue charValue:(char)aCharValue sizeValue:(CGSize)aCGSizeValue pointValue:(CGPoint)aCGPointValue edgeInsetsValue:(UIEdgeInsets)anUIEdgeInsetsValue stringValue:(NSString *)aStringValue idValue:(id)anIdValue {
    
    return @[@(aIntValue), @(aFloatValue), @(aCharValue), [NSValue valueWithCGSize:aCGSizeValue], [NSValue valueWithCGPoint:aCGPointValue], [NSValue valueWithUIEdgeInsets:anUIEdgeInsetsValue], aStringValue, anIdValue];
}
```
and you want to call `-[self testMethodWithIntValue:floatValue:charValue:sizeValue:pointValue: edgeInsetsValue: stringValue:idValue:]`using `-[self performSelector:object:object:]` , opps, you may get confused, because `-[NSObject performSelector:withObject:withObject:]]` only allow passing two parameters, and they are all declared `id` type, how can you pass basic data type just like BOOL, char, int, float and pass more than two parameters.

``` Objective-C
//[self performSelector:@selector(testMethodWithIntValue:floatValue:charValue:sizeValue:pointValue:edgeInsetsValue:stringValue:idValue:) withObject:one withObject:two ....];
```

## How To Use

just one simple line code 

``` Objective-C
[MXRuntimeUtils callMethodWithTarget:self selector:@selector(testMethodWithIntValue:floatValue:charValue:
sizeValue:pointValue:edgeInsetsValue:stringValue:idValue:) argumemts:@[@1, @2.0f, [NSNumber numberWithChar:'3'], [NSValue valueWithCGSize:CGSizeMake(4, 4)], 
[NSValue valueWithCGPoint:CGPointMake(5, 5)], [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(6, 6, 6, 6)], @"7", @"8"] returnValue:&returnValue];
```

if your original method has a return value, please pass the pointer of your declared variable like this, **if you return type is OC object, note that you need declare an __autoreleasing variable like this __autoreleasing NSString *stringReturnValue, __autoreleasing id idReturnValue,** instead of strong OC object, the reason you can see in  **[memory management](http://www.cnblogs.com/flyFreeZn/p/4264220.html)**
 
``` Objective-C
//int returnValue 
int sumReturnValue = 0;
[MXRuntimeUtils callMethodWithTarget:self selector:@selector(sumWithAnIntValue:anotherIntValue) argumemts:@[@1, @2] returnValue:&returnValue];
//sumReturnValue = 3;

//id returnValue 
__autoreleasing id idReturnValue = nil;//avoid idReturnValue is dealloc after method invoking
[MXRuntimeUtils callMethodWithTarget:self selector:@selector(ConvertIntValueToIdType:) argumemts:@[@1] returnValue:&idReturnValue];
//idReturnValue = @1;
```
and you'll get number `3` from `sumReturnValue`, `NSNumber 1 `from`idReturnValue`;

## Sceeenshots
demo screenshot like this, but you may think a while, why I pass char value `'3'`, converted to number is `51`, actually char value `'3'` in `ASCII` is `51`, just like `'A'` is `65`, 'a' is `97` and so on
<img src="https://user-images.githubusercontent.com/17949980/35085081-f940124e-fc61-11e7-9504-28e1303923c5.png">


## Feature
- Auto type checking 

   if you pass an `CGPoint` type value to a method paramater which is declared `int` type, assertion is invoked, you'll see exception logs in your Xcode console something like this.
   
- More than two parameters can be allowed
 
- Any returnValue

   <img src="https://user-images.githubusercontent.com/17949980/35085567-3ba6a2b8-fc64-11e7-9f0d-d39c0bf3b097.png h="300">

