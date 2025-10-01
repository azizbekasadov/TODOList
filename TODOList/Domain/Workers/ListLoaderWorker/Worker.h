//
//  Worker.h
//  TODOList
//
//  Created by Azizbek Asadov on 01.10.2025.
//

@import Foundation;

@interface Worker : NSOperation

@property (strong, nullable) NSMutableArray *errors;
@property (strong) NSString* status;
@property (strong) NSNumber *progress;

- (void) raiseExceptionWithError:(id)error;
- (void) raiseExceptionWithErrors:(NSArray*)error;

- (BOOL) applyChangesToDB;
- (BOOL) raiseMemoryExceptionError;
- (void) resetManagedObjectContext;
- (BOOL) disableCommitsToServer;
- (BOOL) disableCommunicationToServer;

// static timestamp for storing a sync date
+ (NSString*) lastSyncDateKey;

@end
