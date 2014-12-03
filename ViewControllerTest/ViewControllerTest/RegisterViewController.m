//
//  RegisterViewController.m
//  ViewControllerTest
//
//  Created by Alvin Sun on 2014-12-02.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "RegisterViewController.h"

@implementation RegisterViewController

- (IBAction)done:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{NSLog(@"Modal View done");
    
        NSDictionary *dataDict = [NSDictionary dictionaryWithObject:self.txtUsername.text forKey:@"username"];
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"RegisterCompletionNotification" object:nil userInfo:dataDict];

    }];
}
@end
