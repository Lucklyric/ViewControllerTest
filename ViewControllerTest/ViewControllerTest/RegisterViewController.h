//
//  RegisterViewController.h
//  ViewControllerTest
//
//  Created by Alvin Sun on 2014-12-02.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
- (IBAction)done:(id)sender;

@end
