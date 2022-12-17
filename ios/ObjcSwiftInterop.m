#import <TestSwiftModule/ObjcSwiftInterop.h>

#if __has_include(<TestSwiftModule/TestSwiftModule-Swift.h>)
#import <TestSwiftModule/TestSwiftModule-Swift.h>
#else
#import "TestSwiftModule-Swift.h"
#endif

@implementation ObjcSwiftInterop

+ (float)multiplySync:(float)a b:(float)b
{
  TestSwiftModule *swiftModule = [TestSwiftModule new];
  return [swiftModule multiplySync:a withB:b];
}

@end
