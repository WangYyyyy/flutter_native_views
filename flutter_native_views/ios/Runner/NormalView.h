//
//  NormalView.h
//  Runner
//
//  Created by wangyu on 2020/5/12.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface NormalView : NSObject<FlutterPlatformView>

- (instancetype)initWithParamsFlutter:(NSDictionary *)params;

@property(nonatomic, strong)UILabel *normalLabel;

@end

NS_ASSUME_NONNULL_END
