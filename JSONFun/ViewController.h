//
//  ViewController.h
//  JSONFun
//
//  Created by Eric Meyer on 2/23/13.
//  Copyright (c) 2013 Eric Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) NSDateFormatter* formatter;

@property(nonatomic, strong) IBOutlet UIDatePicker* dateInput;
@property(nonatomic, strong) IBOutlet UITextField* nameInput;

@property(nonatomic, strong) IBOutlet UILabel* jsonLabel;
@property(nonatomic, strong) IBOutlet UILabel* deserializedNameLabel;
@property(nonatomic, strong) IBOutlet UILabel* deserializedDateLabel;

-(IBAction) serializeAndDeserializeJSON;

@end
