//
//  FilmFromNetwork.h
//  FilmFront
//
//  Created by Edik Shklyar on 7/23/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Film.h"

@interface FilmFromNetwork : NSObject
+ (id)sharedInstence;
-(void)fetchDataFromFilmSource;

@end
