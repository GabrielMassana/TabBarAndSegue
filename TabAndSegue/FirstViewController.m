//
//  FirstViewController.m
//  TabAndSegue
//
//  Created by Gabriel Massana on 25/04/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go:(id)sender
{
    AppDelegate* delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    delegate.iAbreCotizacion = 1;
    
    self.tabBarController.selectedIndex = 1;
}
@end
