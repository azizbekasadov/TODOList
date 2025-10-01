//
//  APINetworkService.m
//  TODOList
//
//  Created by Azizbek Asadov on 25.09.2025.
//

#import "APINetworkService.h"
#import "Course.h"

@interface APINetworkService()

@property(strong, nonatomic) NSString* urlPath;

@end

@implementation APINetworkService

+ (instancetype)sharedInstance {
    static APINetworkService *sharedService = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedService = [[self alloc] init];
    });
    return sharedService;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.urlPath = @"https://api.letsbuildthatapp.com/jsondecodable/courses";
    }
    return self;
}

- (void)fetchJSONDataWithCompletion:(CompletionHandler)completion {
    NSURL* url = [[NSURL alloc] initWithString:self.urlPath];
    
    NSURLSession* urlSession = NSURLSession.sharedSession;
    [[urlSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data,
                                                            NSURLResponse * _Nullable response,
                                                            NSError * _Nullable error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                if (error) {
                    completion(nil, error);
                    return;
                }
                
                if (data) {
                    NSString *res = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                    NSLog(@"%@", res);
                    
                    NSError* err;
                    
                    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:&err];
                    
                    if (err) {
                        completion(nil, error);
                        return;
                    }
                    
                    
                    NSMutableArray<Course*> *results = [[NSMutableArray alloc] init];
                    
                    for (NSDictionary *dict in json) {
                        Course* course = Course.new;
                        course.name = dict[@"name"];
                        course.numberOfLessons = dict[@"numberOfLessons"];
                        [results addObject:course];
                    }
                    
                    completion(results, nil);
                }
            });
        }] resume];
}

@end
