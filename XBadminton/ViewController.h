//
//  ViewController.h
//  INewsDemo
//
//  Created by sherwin on 15-1-15.
//  Copyright (c) 2015年 sherwin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHMacroDefine.h"

@interface ViewController : UIViewController


- (IBAction)unwindToYellowViewController:(UIStoryboardSegue *)segue;

- (IBAction)showAlert:(UIButton *) sender;

- (IBAction)GuideSwipe:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *showMyApp;

@end

