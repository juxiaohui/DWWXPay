//
//  AppDelegate.m
//  DWWXPay
//
//  Created by cdk on 16/7/8.
//  Copyright © 2016年 dwang. All rights reserved.
//

#import "AppDelegate.h"
#import "DWWXPayH.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //向微信终端程序注册第三方应用
    [[DWWXPay dw_sharedManager] dw_RegisterApp:@"微信分配的" withDescription:@"你的项目Bundle Identifier"];
    
    return YES;
}

//--------------------------------------------------------------------------------
-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url{
    
    return [WXApi handleOpenURL:url delegate:[DWWXPay dw_sharedManager]];

}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    return [WXApi handleOpenURL:url delegate:[DWWXPay dw_sharedManager]];

}

//此方法是由于系统版本更新而出现的方法
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary*)options{
    
    return [WXApi handleOpenURL:url delegate:[DWWXPay dw_sharedManager]];

}
//***********************************************************************************

@end
