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
<img src="https://user-images.githubusercontent.com/17949980/35085081-f940124e-fc61-11e7-9504-28e1303923c5.png" width="1000">


## Feature
- Auto type checking 

   if you pass an `CGPoint` type value to a method paramater which is declared `int` type, assertion is invoked, you'll see exception logs in your Xcode console something like this.
   
- More than two parameters can be allowed
 
- Any returnValue

   <img src="https://user-images.githubusercontent.com/17949980/35085567-3ba6a2b8-fc64-11e7-9f0d-d39c0bf3b097.png" width="1000" align="center">

<br/>

## 中文介绍

***MXRuntimeUtils*** 是用于替换 -[NSObject performSelector:object:object:]的工具，非常容易使用！

##  -[NSObject performSelector:object:object:] 出现哪些问题?

如果你想使用以下方法

``` Objective-C
- (id)testMethodWithIntValue:(int)aIntValue floatValue:(float)aFloatValue charValue:(char)aCharValue sizeValue:(CGSize)aCGSizeValue pointValue:(CGPoint)aCGPointValue edgeInsetsValue:(UIEdgeInsets)anUIEdgeInsetsValue stringValue:(NSString *)aStringValue idValue:(id)anIdValue {
    
    return @[@(aIntValue), @(aFloatValue), @(aCharValue), [NSValue valueWithCGSize:aCGSizeValue], [NSValue valueWithCGPoint:aCGPointValue], [NSValue valueWithUIEdgeInsets:anUIEdgeInsetsValue], aStringValue, anIdValue];
}
```
而且你想调用 `-[self testMethodWithIntValue:floatValue:charValue:sizeValue:pointValue: edgeInsetsValue: stringValue:idValue:]`但是用另一种方式来表达 `-[self performSelector:object:object:]` , 你可能感到懵逼, 因为 `-[NSObject performSelector:withObject:withObject:]]` 最高仅仅允许传两个值，而且还只能是id类型，那么，你怎么传基本数据类型，比如像 BOOL, char, int, float ，甚至超过两个参数的上限呢！

``` Objective-C
//[self performSelector:@selector(testMethodWithIntValue:floatValue:charValue:sizeValue:pointValue:edgeInsetsValue:stringValue:idValue:) withObject:one withObject:two ....];
```

## 如何使用

仅仅一行代码

``` Objective-C
[MXRuntimeUtils callMethodWithTarget:self selector:@selector(testMethodWithIntValue:floatValue:charValue:
sizeValue:pointValue:edgeInsetsValue:stringValue:idValue:) argumemts:@[@1, @2.0f, [NSNumber numberWithChar:'3'], [NSValue valueWithCGSize:CGSizeMake(4, 4)], 
[NSValue valueWithCGPoint:CGPointMake(5, 5)], [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(6, 6, 6, 6)], @"7", @"8"] returnValue:&returnValue];
```
如果你的原始方法有一个返回值，那么就传一个返回值类型的指针，就像这样，***如果你的返回值是一个OC对象, 注意要传一个 __autoreleasing 变量就像 这样 __autoreleasing NSString *stringReturnValue,  __autoreleasing id idReturnValue*** 而不是***NSString *stringReturnValue,  id idReturnValue***, 理由你可以看看这篇文章  **[memory management](http://www.cnblogs.com/flyFreeZn/p/4264220.html)**
 
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
之后你就可以从`sumReturnValue`中得到数字`3`， idReturnValue中得到`1`

## 屏幕截图
示例代码中的`demo` 截图就像这样, 但是你会有点疑惑，为什么我传的值是字符类型`char 3`，转换成数字类型咋变成了`51`了，事实上, 在 `ASCII` 中 `char value '3' ` 就是 数字 `51`,  就像 `'A'` 是 `65`, 'a' 是 `97` 一样
![运行结果](http://upload-images.jianshu.io/upload_images/2546918-71876321511963fd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## 特性
- 自动类型检查

如果你传一个 `CGPoint`类型的值给一个 声明为int类型的方法参数，断言会触发，你会在`Xcode控制台`中得到以下截图信息
 
- 允许传两个以上的参数
 
- 得到任何类型的返回值
![自动类型检查](http://upload-images.jianshu.io/upload_images/2546918-785bce4f06072df3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


