//
//  ViewController.m
//  ViewControllerTest
//
//  Created by Alvin Sun on 2014-12-02.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registionCompletion:) name:@"RegisterCompletionNotification" object:nil];
}

- (void)registionCompletion:(NSNotification*)notificaiton
{
    NSDictionary *theData = [notificaiton userInfo];
    NSString *username = [theData objectForKey:@"username"];
    self.userName.text = username;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)regonclick:(id)sender {
    
    UIStoryboard* mainBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *registerViewController = [mainBoard instantiateViewControllerWithIdentifier:@"registerViewController"];
    
    registerViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:registerViewController animated:YES completion:^{NSLog(@"Presen Modal View");}];
}
@end
