//
//  Coordinator.h
//  TODOList
//
//  Created by Azizbek Asadov on 01.10.2025.
//

#ifndef Coordinator_h
#define Coordinator_h

@import Foundation;
@import UIKit;

@protocol Coordinator <NSObject>

- (void) pushToDestinationController: (UIViewController*) destinationViewController;
- (void) popFromCurrentController;
- (void) popToRootViewController;

@end

#endif /* Coordinator_h */
