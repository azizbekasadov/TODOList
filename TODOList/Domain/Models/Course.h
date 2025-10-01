//
//  Course.h
//  TODOList
//
//  Created by Azizbek Asadov on 25.09.2025.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property(strong, nonatomic) NSString* name;
@property(strong, nonatomic) NSNumber* numberOfLessons;

-(instancetype)initWithName:(NSString*)name numberOfLessons:(NSNumber*)numberOfLessons;

@end
