//
//  SceneDelegate.m
//  TODOList
//
//  Created by Azizbek Asadov on 24.09.2025.
//

#import "SceneDelegate.h"
#import "AppCoordinator.h"

@interface SceneDelegate ()

@property(strong, nonatomic) AppCoordinator* coordinator;

@end

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    UIWindowScene* windowScene = [[UIWindowScene alloc] initWithSession:session connectionOptions:connectionOptions];
    self.coordinator = [[AppCoordinator alloc] initWithWindowScene:windowScene];
    [self.coordinator start];
}

- (void)sceneDidDisconnect:(UIScene *)scene {
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
}


- (void)sceneWillResignActive:(UIScene *)scene {
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
}

@end
