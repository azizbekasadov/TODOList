//
//  APINetworkService.h
//  TODOList
//
//  Created by Azizbek Asadov on 25.09.2025.
//

#import <Foundation/Foundation.h>
#import "Shared.h"

@class Course;

@interface APINetworkService : NSObject

+ (instancetype)sharedInstance;

-(void)fetchJSONDataWithCompletion:(CompletionHandler)completion;

@end
