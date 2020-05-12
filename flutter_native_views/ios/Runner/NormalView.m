//
//  NormalView.m
//  Runner
//
//  Created by wangyu on 2020/5/12.
//

#import "NormalView.h"

@implementation NormalView

- (instancetype)initWithParamsFlutter:(NSDictionary *)params
{
    self = [super init];
    if (self) {
        _normalLabel = [UILabel new];
        _normalLabel.text = [NSString stringWithFormat:@"iOS原生View\n%@", params[@"value"]];
        _normalLabel.numberOfLines = 2;
        _normalLabel.textColor = UIColor.whiteColor;
        _normalLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (UIView*)view {
    return _normalLabel;
}

@end
