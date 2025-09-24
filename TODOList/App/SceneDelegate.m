//
//  SceneDelegate.m
//  TODOList
//
//  Created by Azizbek Asadov on 24.09.2025.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()
@end

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    
    UIViewController* rootViewController = ViewController.new;
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    
    [self.window makeKeyAndVisible];
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
