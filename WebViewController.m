//
//  WebViewController.m
//  Nerdfeed
//
//  Created by Shaofeng Mo on 7/12/15.
//  Copyright (c) 2015 Seanmok. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)loadView
{
    UIWebView *webView = [[UIWebView alloc] init];
    webView.scalesPageToFit = YES;
    self.view = webView;
}

- (void)setURL:(NSURL *)URL
{
    _URL = URL;
    if (_URL) {
        NSURLRequest *request = [NSURLRequest requestWithURL:_URL];
        [(UIWebView *)self.view loadRequest:request];
    }
}

@end
