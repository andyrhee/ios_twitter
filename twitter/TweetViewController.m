//
//  TweetViewController.m
//  twitter
//
//  Created by Andy Rhee on 1/27/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "TweetViewController.h"
#import "UIImageView+AFNetworking.h"

@interface TweetViewController ()

@property (nonatomic, strong) Tweet *tweet;

@property (nonatomic, weak) IBOutlet UILabel *username;
@property (nonatomic, weak) IBOutlet UIImageView *picture;
@property (nonatomic, weak) IBOutlet UILabel *tweetText;

@end

@implementation TweetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithTweet:(Tweet *)tweet
{
    NSLog(@"Hello tweet: %@", tweet);
    self.tweet = tweet;
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tweetText.text = self.tweet.text;
    self.username.text = self.tweet.username;
    [self.picture setImageWithURL: [NSURL URLWithString: self.tweet.profile_image_url]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
