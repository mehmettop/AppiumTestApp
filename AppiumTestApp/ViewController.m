//
//  ViewController.m
//  AppiumTestApp
//
//  Created by Mehmet Top on 05/01/2017.
//  Copyright © 2017 Mehmet Top. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

    @property (nonatomic, weak) IBOutlet UILabel *lblMessage;
    @property (nonatomic, weak) IBOutlet UITextField *txtInputMessage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)Enter {
    
    NSString *valueMessage = self.txtInputMessage.text;
    
    if ([valueMessage length] == 0) {
        valueMessage = @">> Helloworld !";
        self.lblMessage.text = valueMessage;
        return;
    }
    valueMessage = [NSString stringWithFormat:@">> Your Message : %@", valueMessage];
    self.lblMessage.text = valueMessage;
}


@end
