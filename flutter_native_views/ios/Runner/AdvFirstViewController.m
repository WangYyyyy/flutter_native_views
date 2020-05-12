//
//  AdvFirstViewController.m
//  Runner
//
//  Created by wangyu on 2020/5/12.
//

#import "AdvFirstViewController.h"
#import "AdvSecondViewController.h"
#import <Flutter/Flutter.h>
@interface AdvFirstViewController ()
@property(nonatomic, strong)FlutterBasicMessageChannel *messager;


@end

@implementation AdvFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"原生一页面";
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *pushb = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushb setTitle:@"push to next view" forState:UIControlStateNormal];
    pushb.frame = CGRectMake(0, 120, self.view.frame.size.width, 44);
    [pushb addTarget:self action:@selector(toPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushb];
    
    
    UIButton *closeb = [UIButton buttonWithType:UIButtonTypeSystem];
    [closeb setTitle:@"close this view" forState:UIControlStateNormal];
    closeb.frame = CGRectMake(0, 200, self.view.frame.size.width, 44);
    [closeb addTarget:self action:@selector(toClose) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeb];
    
    
    //注册messagechannel
    FlutterAppDelegate *appd = (FlutterAppDelegate *)[UIApplication sharedApplication].delegate;
    FlutterViewController *root = (FlutterViewController *)appd.window.rootViewController;
    
    FlutterBasicMessageChannel *messager = [FlutterBasicMessageChannel messageChannelWithName:@"native_view_message" binaryMessenger:root.binaryMessenger];
    _messager = messager;
    
}

- (void)toPush {
    AdvSecondViewController *v = [AdvSecondViewController new];
    [self.navigationController pushViewController:v animated:YES];
}

- (void)toClose {
    [_messager sendMessage:@"send exit!!!"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
