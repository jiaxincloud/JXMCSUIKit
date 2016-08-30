//
//  JXIMClient+Helper.h
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "JXAgentClient.h"
#import "JXClientDelegate.h"
#import "JXMacros.h"

@interface JXAgentClient (Helper)

#pragma mark - init client

- (void)clientApplication:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
                               appkey:(NSString *)appkey
                         apnsCertName:(NSString *)apnsCertName;

@end
