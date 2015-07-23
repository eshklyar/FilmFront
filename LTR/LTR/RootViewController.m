//
//  ViewController.m
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "RootViewController.h"
#import "PhotosViewController.h"

@interface RootViewController () <PhotoDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftPhotoContrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightPhotoContrain;
@property (strong, nonatomic )PhotosViewController *photo;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    PhotosViewController *photo = [[PhotosViewController alloc] init];
    self.photo = [[PhotosViewController alloc] init];

    UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [testButton setTitle:@"TEST DELEGATE" forState:UIControlStateNormal  ];
    [self.view addSubview:testButton];
    [testButton addTarget:self action:@selector(onTestButtonTappd:) forControlEvents:UIControlEventTouchUpInside];


//    UINavigationController *navVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
//    NSLog(@"navVC, %@",navVC);
//    PhotosViewController *photoVC = navVC.viewControllers[0];
//    photoVC.delegate = self;

//    UINavigationController *navVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
//    PhotosViewController *photoVC = navVC.viewControllers[0];
//    photoVC.delegate = self;
    self.photo.delegate = self;
    [self.photo helloDelegate];
    [self.photo onSecondTineBarBtn];



//    self.photo.delegate = self;
    NSLog(@"viewdidload");

    self.rightPhotoContrain.constant= 120;
    self.leftPhotoContrain.constant = 20;

    NSLog(@"constrain %f", self.rightPhotoContrain.constant);
    NSLog(@"constrain %f", self.leftPhotoContrain.constant);
}

- (IBAction)onTestButtonTappd:(id)sender
{
    NSLog(@"HIT TEST BUTTON");
}

//-(void)topRevealButtonTapped:(BOOL)tap{
//    NSLog(@"tap, %d",tap);
////    self.leftPhotoContrain = self.rightPhotoContrain;
//    self.leftPhotoContrain.constant +=130;
//    NSLog(@"executing");
//
//    NSLog(@"change in constrain");
//        NSLog(@"constrain %f", self.leftPhotoContrain.constant);
//}
-(void)sayHello{
    NSLog(@"hi there");
}
-(void)topRevealButtonTapped:(BOOL)tap{
    NSLog(@"tap is %d",tap);
}
@end
