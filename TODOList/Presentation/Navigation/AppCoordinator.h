//
//  AppCoordinator.h
//  TODOList
//
//  Created by Azizbek Asadov on 01.10.2025.
//

@import UIKit;

#import "Coordinator.h"

@class DashboardViewController;

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator : NSObject

- (instancetype) initWithWindowScene: (UIWindowScene*) windowScene;
- (instancetype) init NS_UNAVAILABLE;

+ (instancetype) new NS_UNAVAILABLE;

- (void) start;

@end

NS_ASSUME_NONNULL_END
