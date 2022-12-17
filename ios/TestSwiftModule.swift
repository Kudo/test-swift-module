@objc(TestSwiftModule)
public class TestSwiftModule: ObjcMultiply {

  @objc(multiply:withB:withResolver:withRejecter:)
  public func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    let result = multiplySync(a: a, b: b)
    resolve(result)
  }

  @objc(multiplySync:withB:)
  public func multiplySync(a: Float, b: Float) -> Float {
    return super.multiplySync(a, b: b)
  }
}
