//
//  Course.m
//  TODOList
//
//  Created by Azizbek Asadov on 25.09.2025.
//

#import "Course.h"

@interface Course ()

@end

@implementation Course

-(instancetype)initWithName:(NSString*)name numberOfLessons:(NSNumber*)numberOfLessons {
    if (self) {
        self.name = name;
        self.numberOfLessons = numberOfLessons;
    }
    
    return self;
}

@end
