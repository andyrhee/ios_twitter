//
//  ComposeViewController.m
//  twitter
//
//  Created by Andy Rhee on 1/27/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()

@end

@implementation ComposeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(onCancelButton)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Tweet" style:UIBarButtonItemStylePlain target:self action:@selector(onTweetButton)];
    
    NSLog(@"Do some character counting maybe");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onCancelButton
{
    NSLog(@"Cancel button pressed!");

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)onTweetButton
{
    NSLog(@"Tweet button pressed");
    
    NSString *tweetText = @"This is a test";
    
    // Code to send the tweet here
    [[TwitterClient instance] tweet:tweetText success:^(AFHTTPRequestOperation *operation, id response) {
        NSLog(@"%@", response);
        //self.tweets = [Tweet tweetsWithArray:response];
        //[self.tableView reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // Do nothing
    }];
    
    NSLog(@"Sent the tweet");
    
    [self dismissViewControllerAnimated:YES completion:nil];

    //[self.navigationController popViewControllerAnimated:YES];

}

@end
