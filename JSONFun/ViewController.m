//
//  ViewController.m
//  JSONFun
//
//  Created by Eric Meyer on 2/23/13.
//  Copyright (c) 2013 Eric Meyer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize json;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary* info = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"name", @"who",
                          @"country", @"where",
//                          [NSDate date], @"when",
                          nil];

    //convert object to data
    NSError* error;
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject: info
                                                       options: NSJSONWritingPrettyPrinted
                                                         error: &error];
    
    json.text = [[NSString alloc] initWithData:jsonData
                                      encoding:NSUTF8StringEncoding];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
