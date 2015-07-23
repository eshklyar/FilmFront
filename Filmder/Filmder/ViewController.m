//
//  ViewController.m
//  Filmder
//
//  Created by Edik Shklyar on 6/22/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
 @property NSMutableArray *filmListArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

        self.filmListArray = [NSMutableArray new];

        NSURL *url = [NSURL URLWithString:@"http://developer.rottentomatoes.com/docs/json/v10/In_Theaters_Movies"];

        NSURLRequest *request = [NSURLRequest requestWithURL:url];

        [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {

            NSArray *results = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&connectionError];

            NSLog(@"fbla");
            for (NSDictionary *dict in results)
            {
                [self.filmListArray addObject:dict];
                NSLog(@"film: %@", dict);
                 NSLog(@"fbla3");
            }
        }];


 NSLog(@"fbla 2");
   }
@end
