//
//  PageviewTest.h
//  ViewControllerTest
//
//  Created by Alvin Sun on 2014-12-03.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageviewTest : UIViewController <UIScrollViewDelegate>

@property (strong,nonatomic) UIView *page1;
@property (strong,nonatomic) UIView *page2;


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


- (IBAction)changePage:(id)sender;

@end
