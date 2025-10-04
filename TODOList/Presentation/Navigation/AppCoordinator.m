//
//  AppCoordinator.m
//  TODOList
//
//  Created by Azizbek Asadov on 01.10.2025.
//

#import "AppCoordinator.h"
#import "DashboardViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator()

@property (strong, nonatomic) UINavigationController* navigationController;
@property (strong, nonatomic) UIWindow* window;

@end

@interface AppCoordinator(Coordinator)

@property (strong, nonatomic) UINavigationController* navigationController;
@property (strong, nonatomic) UIWindow* window;

@end

@implementation AppCoordinator

- (UINavigationController *) navigationController {
    if (!_navigationController) {
        _navigationController = [[UINavigationController alloc] init];
    }
    
    return _navigationController;
}

- (instancetype)initWithWindowScene:(UIWindowScene *)windowScene {
    self = [super init];
    
    if (self) {
        self.window = [[UIWindow alloc] initWithWindowScene: windowScene];
    }
    
    return self;
}

- (void) start {
    id rootViewController = [[DashboardViewController alloc] init];
    
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
}

@end

NS_ASSUME_NONNULL_END
