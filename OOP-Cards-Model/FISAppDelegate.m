//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"
@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    FISCard *newCard = [[FISCard alloc]init];
    NSLog( @"%@", newCard);
    return YES;
}

@end
