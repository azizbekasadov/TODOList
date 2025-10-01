//
//  ViewController.m
//  TODOList
//
//  Created by Azizbek Asadov on 24.09.2025.
//

#import "ViewController.h"
#import "Course.h"
#import "APINetworkService.h"

@interface ViewController ()
// properties that belong to this class
@property(strong, nonatomic) NSArray<Course*> *courses;

@end

@implementation ViewController

NSString* cellid = @"cellid";

- (void)viewDidLoad {
    [super viewDidLoad];
    
//#if DEBUG
//    [self loadMockData];
//#else
    [self fetchDataFromJSON];
//#endif
    
    [self setupMainContentViewProperties];
    [self setupNavigationBarProperties];
    [self setupTableViewProperties];
}

-(void)loadMockData {
    self.courses = @[
        [[Course new] initWithName:@"LBTA" numberOfLessons:@(10)],
        [[Course new] initWithName:@"Mark Moyeken" numberOfLessons:@(11)],
    ];
    
    [self.tableView reloadData];
}

-(void)fetchDataFromJSON {
    NSLog(@"Fetching data from the json file");
    [[APINetworkService sharedInstance] fetchJSONDataWithCompletion:^(id  _Nullable result, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
            return;
        }
        
        if (result) {
            NSLog(@"%@", result);
            self.courses = [result copy];
        }
        
        [self.tableView reloadData];
    }];
}

-(void)setupMainContentViewProperties {
    self.view.backgroundColor = [UIColor systemGroupedBackgroundColor];
}

-(void)setupNavigationBarProperties {
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.navigationItem.title = @"TODO";
}

-(void)setupTableViewProperties {
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellid];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.courses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid];
    
    Course* course = self.courses[indexPath.row];
    
    cell.backgroundColor = UIColor.redColor;
    cell.textLabel.text = course.name;
    cell.detailTextLabel.text = course.numberOfLessons.stringValue;
    
    return cell;
}

@end
