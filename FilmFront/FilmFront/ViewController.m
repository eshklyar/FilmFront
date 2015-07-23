//
//  ViewController.m
//  FilmFront
//
//  Created by Edik Shklyar on 7/21/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "ViewController.h"
#import "PersonCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) NSMutableArray *films;
@property (strong, nonatomic) NSMutableArray *people;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.people = [[NSMutableArray alloc]initWithObjects:@"Rudy",@"Alen",@"Boris", nil];
//    [self.people addObject:@"person"

}
#pragma mark - UICollectionView Datasource
// 1
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
//    NSString *searchTerm = self.searches[section];
//    return [self.searchResults[searchTerm] count];
     return [self.people count];

}
// 2
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}
// 3
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PersonCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"PersonCollectionViewCell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.people objectAtIndex:indexPath.row]];
    cell.textLabel.backgroundColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor grayColor];
//    cell.lab
    return cell;
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item
}
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
}
@end
