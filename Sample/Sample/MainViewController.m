//
//  MainViewController.m
//  Sample
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import "MainViewController.h"
#import <RealSimulator/RealSimulator.h>
#import "RadioTableViewCell.h"

@interface MainViewController ()
@property (nonatomic) NSIndexPath *selectedIndexPath;
@property (nonatomic) NSArray *dataSources;
@property (nonatomic) NSArray<NSArray *> *configs;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass(RadioTableViewCell.class) bundle:nil] forCellReuseIdentifier:NSStringFromClass(RadioTableViewCell.class)];
    
    self.dataSources = @[@"iPhone 5/5S/SE", @"iPhone 6/6S/7/8", @"iPhone 6P/6SP/7P/8P", @"iPhone X"];
    self.configs = @[@[[[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType4 contentMode:RSConfigContentModeScaleAspectFit],
                       [[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType47 contentMode:RSConfigContentModeScaleAspectFit],
                       [[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType55 contentMode:RSConfigContentModeScaleAspectFit],
                       [[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType58 contentMode:RSConfigContentModeScaleAspectFit]],
  @[[[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType4 contentMode:RSConfigContentModeCenter],
    
    [[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType47 contentMode:RSConfigContentModeCenter],
    
    [[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType55 contentMode:RSConfigContentModeCenter],
    
    [[RSConfig alloc] initWithDesignResolutionType:RSConfigDesignResolutionType58 contentMode:RSConfigContentModeCenter]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RadioTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(RadioTableViewCell.class) forIndexPath:indexPath];
    cell.radioImageView.highlighted = indexPath.section == self.selectedIndexPath.section && indexPath.row == self.selectedIndexPath.row;
    cell.nameLabel.text = self.dataSources[indexPath.row];
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.configs[section].count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.configs.count;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedIndexPath = indexPath;
    [self.tableView reloadData];
    RSWindow *window = (RSWindow *)[RSApplication sharedApplication].keyWindow;
    [window reloadWindowWithConfig:self.configs[indexPath.section][indexPath.row]];
}
@end
