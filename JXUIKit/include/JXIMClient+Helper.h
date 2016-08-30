//
//  JXIMClient+Helper.h
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "JXIMClient.h"
#import "JXClientDelegate.h"
#import "JXMacros.h"

@interface JXIMClient (Helper)

#pragma mark - init client

- (void)clientApplication:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
                               appkey:(NSString *)appkey
                         apnsCertName:(NSString *)apnsCertName;

@end
