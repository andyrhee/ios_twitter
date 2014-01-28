//
//  Tweet.m
//  twitter
//
//  Created by Timothy Lee on 8/5/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (NSString *)text {
    return [self.data valueOrNilForKeyPath:@"text"];
}

- (NSString *)username {
    NSDictionary *user = [self.data valueOrNilForKeyPath:@"user"];
    NSString *username = [user valueForKey:@"name"];
    NSLog(@"user name: %@", username);
    return username;
}

- (NSString *)profile_image_url {
    NSDictionary *user = [self.data valueOrNilForKeyPath:@"user"];
    NSString *profile_image_url = [user valueForKey:@"profile_image_url"];
    NSLog(@"user name: %@", profile_image_url);
    return profile_image_url;
}

+ (NSMutableArray *)tweetsWithArray:(NSArray *)array {
    NSMutableArray *tweets = [[NSMutableArray alloc] initWithCapacity:array.count];
    for (NSDictionary *params in array) {
        [tweets addObject:[[Tweet alloc] initWithDictionary:params]];
    }
    return tweets;
}

@end
