//
//  ViewController.m
//  FilmFront
//
//  Created by Edik Shklyar on 7/21/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "ViewController.h"
#import "PersonCollectionViewCell.h"
#import "Film.h"
#import "FilmFromNetwork.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, UIGestureRecognizerDelegate>
@property (weak, nonatomic) NSMutableArray *films;
@property (strong, nonatomic) NSMutableArray *people;
@property (strong, nonatomic)Film *film;
@property (strong, nonatomic) IBOutlet UIImageView *filmImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.people = [[NSMutableArray alloc]initWithObjects:@"Rudy",@"Alen",@"Boris", nil];

    NSString *imageName = [NSString stringWithFormat:@"tiger1@2x.jpg"];
    UIImage *image =[UIImage imageNamed:imageName];

//    UIImage *image =[UIImage imageNamed:@"tiger1@2x.jpg"];
    self.filmImageView =[[UIImageView alloc]initWithImage:image];


//    self.filmImageView.backgroundColor =[UIColor greenColor];

//    [self.filmImageView setImage:image];



//    [self.view addSubview:[[UIImageView alloc] initWithImage:image]];



    [self.view addSubview:self.filmImageView];




//    self.filmImage =[[UIImage alloc]init];
//    UIImage *image = [UIImage imageNamed:@"dp.jpg"];
    self.film = [[Film alloc]init];
//    Film *myFilm =[[Film alloc]init];
//    [self.people addObject:@"person"




    [[FilmFromNetwork sharedInstence] fetchDataFromFilmSource];


    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];

    // Setting the swipe direction.
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];

    // Adding the swipe gesture on image view
    [self.filmImageView addGestureRecognizer:swipeLeft];
    [self.filmImageView addGestureRecognizer:swipeRight];


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

#pragma mark - UIGestureRecognizer

- (void)handleSwipe:(UISwipeGestureRecognizer *)swipe {

    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Left Swipe");
    }

    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"Right Swipe");
    }
    
}
@end
