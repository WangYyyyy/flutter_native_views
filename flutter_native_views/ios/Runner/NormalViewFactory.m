//
//  NormalViewFactory.m
//  Runner
//
//  Created by wangyu on 2020/5/12.
//

#import "NormalViewFactory.h"
#import "NormalView.h"

@implementation NormalViewFactory

- (NSObject<FlutterPlatformView>*)createWithFrame:(CGRect)frame
                                   viewIdentifier:(int64_t)viewId
                                        arguments:(id _Nullable)args {
    return [[NormalView alloc] initWithParamsFlutter:args];
}

- (NSObject<FlutterMessageCodec>*)createArgsCodec {
    return [FlutterStandardMessageCodec sharedInstance];
}

@end
