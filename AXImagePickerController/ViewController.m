//
//  ViewController.m
//  AXImagePickerController
//
//  Created by ai on 15/11/20.
//  Copyright © 2015年 AiXing. All rights reserved.
//

#import "ViewController.h"
#import "AXImagePickerController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [AXImagePickerController requestAuthorizationCompletion:NULL failure:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Actions
- (IBAction)selectImages:(id)sender {
    AXImagePickerController *imagePickerController = [[AXImagePickerController alloc] init];
    [self presentViewController:imagePickerController animated:YES completion:nil];
}
@end