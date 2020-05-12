//
//  AdvancedView.m
//  Runner
//
//  Created by wangyu on 2020/5/12.
//

#import "AdvancedView.h"

@implementation AdvancedView

- (instancetype)init
{
    self = [super init];
    if (self) {
        AdvFirstViewController *v = [AdvFirstViewController new];
        _mianNav = [[UINavigationController alloc] initWithRootViewController:v];
    }
    return self;
}

- (UIView *)view {
    return _mianNav.view;
}

@end
