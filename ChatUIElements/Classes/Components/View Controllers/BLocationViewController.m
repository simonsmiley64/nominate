//
//  BLocationViewController.m
//  Chat SDK
//
//  Created by Benjamin Smiley-andrews on 16/04/2014.
//  Copyright (c) 2014 chatsdk.co All rights reserved. The Chat SDK is issued under the MIT liceense and is available for free at http://github.com/chat-sdk
//

#import "BLocationViewController.h"
#import <ChatSDK/ChatCore.h>
#import <ChatSDK/ChatUI.h>

@interface BLocationViewController ()

@end

@implementation BLocationViewController

@synthesize mapView;
@synthesize region;
@synthesize annotation;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:@"BLocationViewController" bundle:[NSBundle chatUIBundle]];
    if (self) {
        self.title = @"Location Message";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSBundle t:bBack] style:UIBarButtonItemStylePlain target:self action:@selector(backButtonPressed)];
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [mapView setRegion:region animated:NO];
    [mapView addAnnotation:annotation];
    [mapView selectAnnotation:annotation animated:NO];
}

-(void) backButtonPressed {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

@end
