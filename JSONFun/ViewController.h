//
//  ViewController.h
//  JSONFun
//
//  Created by Eric Meyer on 2/23/13.
//  Copyright (c) 2013 Eric Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) IBOutlet UILabel* json;
@property(nonatomic, strong) IBOutlet UILabel* deserializedName;
@property(nonatomic, strong) IBOutlet UILabel* deserializedDate;

@end
