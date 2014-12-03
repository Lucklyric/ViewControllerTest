//
//  PageviewTest.m
//  ViewControllerTest
//
//  Created by Alvin Sun on 2014-12-03.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "PageviewTest.h"

@implementation PageviewTest


- (void)viewDidLoad{
    [super viewDidLoad];
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*2,self.scrollView.frame.size.height);
    
    UIStoryboard *mainBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController * page1ViewController = [mainBoard instantiateViewControllerWithIdentifier:@"1"];
    self.page1 = page1ViewController.view;
    self.page1.frame = CGRectMake(0, 0, 320, 420);
    
    UIViewController * page2ViewController = [mainBoard instantiateViewControllerWithIdentifier:@"registerViewController"];
    self.page2 = page2ViewController.view;
    self.page2.frame = CGRectMake(320, 0, 320, 420);
    
    
    self.scrollView.delegate = self;
    
    [self.scrollView addSubview:self.page1];
    [self.scrollView addSubview:self.page2];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGPoint offset = scrollView.contentOffset;
    self.pageControl.currentPage = offset.x/320.0f;
}



- (IBAction)changePage:(id)sender {
    NSLog(@"changeopage");
    [UIView animateWithDuration:0.3f animations:^{
        int whichPage = self.pageControl.currentPage;
        self.scrollView.contentOffset = CGPointMake(320.0f * whichPage, 0.0f);
        
    }];
}
@end
