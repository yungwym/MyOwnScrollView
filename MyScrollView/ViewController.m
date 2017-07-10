//
//  ViewController.m
//  MyScrollView
//
//  Created by Alex Wymer  on 2017-07-10.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

//@property (nonatomic) UIView *masterView;
@property (nonatomic) MyScrollView *scrollView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Master View
    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.scrollView];
    
    //Red Box
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:redView];
    
    //Green Box
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:greenView];
    
    //Blue Box
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:blueView];
    
    //Yellow Box
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:yellowView];
    
    
}


//-(void)viewDidAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    
//    CGRect newMaster = self.masterView.bounds;
//    newMaster.origin.y += 100;
//    self.masterView.bounds = newMaster; 
//    
//    
//}


@end
