//
//  DashboardViewController.m
//  TODOList
//
//  Created by Azizbek Asadov on 01.10.2025.
//

@import UIKit;
#import "DashboardViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DashboardViewController()

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Dashboard";
    self.navigationController.navigationBar.prefersLargeTitles = true;
    
    if (@available(iOS 16.0, *)) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Create" image:nil target:self action:@selector(handleCreateRecordPressed) menu:nil];
    } else {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Create" style:UIBarButtonItemStylePlain target:self action:@selector(handleCreateRecordPressed)];
    }
}

- (void) handleCreateRecordPressed {
    
}

@end

NS_ASSUME_NONNULL_END
