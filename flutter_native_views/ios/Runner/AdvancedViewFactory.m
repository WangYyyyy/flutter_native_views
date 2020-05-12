//
//  AdvancedViewFactory.m
//  Runner
//
//  Created by wangyu on 2020/5/12.
//

#import "AdvancedViewFactory.h"
#import "AdvancedView.h"

@implementation AdvancedViewFactory

- (NSObject<FlutterPlatformView>*)createWithFrame:(CGRect)frame
                                   viewIdentifier:(int64_t)viewId
                                        arguments:(id _Nullable)args {
    
    return [AdvancedView new];
}

@end
