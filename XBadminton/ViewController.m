//
//  ViewController.m
//  INewsDemo
//
//  Created by sherwin on 15-1-15.
//  Copyright (c) 2015年 sherwin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController.navigationBar.tintColor =  [UIColor whiteColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    [self go];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) navBack
{
    [self.navigationController popViewControllerAnimated:YES];
    return;
}

- (IBAction)unwindToYellowViewController:(UIStoryboardSegue *)segue {
    
    //UIViewController *sourceViewController = segue.sourceViewController;
    
    if ([segue.identifier isEqualToString:@""]) {
        
    }
    else if ([segue.identifier isEqualToString:@""])
    {
        
    }
}


-(void) go
{
    
    return;
    
    /*
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://chensheng12330.hkhost28.pw/INews/index.php"]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSString *info = [[NSString alloc] initWithData:data encoding:4];
        
        NSLog(info);
    }];*/
}


-(IBAction) showAlert:(UIButton *) sender
{
    NSString *strInfo =  nil;
    
    if (sender.tag == 1) {
        strInfo = @"您已成功添加到个人订阅!";
    }
    else if (sender.tag ==2)
    {
        strInfo = @"您已成功添加到个人收藏!";
    }
    else if (sender.tag == 3)
    {
        strInfo = @"您的资讯已缓存!";
    }
    else if (sender.tag == 4)
    {
        strInfo = @"您已设置为夜间模式!";
    }
    else if (sender.tag == 5)
    {
        strInfo = @"您已设置为无图模式";
    }
    
    SHAlert(strInfo);
}

static int imgIndex = 0;


- (IBAction)GuideSwipe:(UISwipeGestureRecognizer*)sender {
    
    NSArray *gob_imageAr = @[@"IMG_3194.PNG",@"IMG_3195.PNG",@"IMG_3196.PNG",@"IMG_3197.PNG"];
    imgIndex++;
    
    [_showMyApp setHidden:YES];
    
    if (imgIndex>3) {
        imgIndex = 0;
    }
    else if (imgIndex==3)
    {
        [_showMyApp setHidden:NO];
    }
    
    UIImageView * imageView = (UIImageView *)sender.view;
    [imageView setImage:[UIImage imageNamed:gob_imageAr[imgIndex]]];
}
@end
