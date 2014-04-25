//
//  SecondViewController.m
//  TabAndSegue
//
//  Created by Gabriel Massana on 25/04/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@property (nonatomic, strong) NSArray *array;

@end

@implementation SecondViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    AppDelegate* delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    if (delegate.iAbreCotizacion == 1)
    {
        delegate.iAbreCotizacion = 0;
        [self performSegueWithIdentifier:@"pushDetailGMMFlex" sender:self];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.array = @[@"one", @"two", @"ten", @"fourteen"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"pushDetailGMMFlex" sender:self];
}


@end
