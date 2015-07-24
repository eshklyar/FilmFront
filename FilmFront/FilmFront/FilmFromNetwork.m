//
//  FilmFromNetwork.m
//  FilmFront
//
//  Created by Edik Shklyar on 7/23/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "FilmFromNetwork.h"

@implementation FilmFromNetwork

+ (id)sharedInstence
{
    static FilmFromNetwork *sharedInstence = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstence = [[self alloc] init];
    });
    return sharedInstence;
}

-(void)fetchDataFromFilmSource{

}


@end
