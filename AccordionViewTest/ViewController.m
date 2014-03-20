//
//  ViewController.m
//  AccordionViewTest
//
//  Created by SOHAM PAUL on 06/06/13.
//  Copyright (c) 2013 SOHAM PAUL. All rights reserved.
//

#import "ViewController.h"
#include "AccordionView.h"



@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    
    firstVC = [[FirstViewController alloc]init];
    secondVC = [[SecondViewController alloc]init];
    thirdVC = [[ThirdViewController alloc]init];
    fourthVC = [[FourthViewController alloc]init];
    
    
    
    [self renderUI];
}
-(void)renderUI{
    
    AccordionView *accordion = [[AccordionView alloc] initWithFrame:CGRectMake(0, 0, 320, 420)];
    [self.view addSubview:accordion];
    
    
    // Only height is taken into account, so other parameters are just dummy
    UIButton *header1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 30)];
    [header1 setTitle:@"First row" forState:UIControlStateNormal];
    
    firstVC.view.frame = CGRectMake(0, 0, 0, 200);
    [accordion addHeader:header1 withView:firstVC.view];
    
    
    
    UIButton *header2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 30)];
    [header2 setTitle:@"Second row" forState:UIControlStateNormal];
    
    secondVC.view.frame = CGRectMake(0, 0, 0, 200);
    [accordion addHeader:header2 withView:secondVC.view];
    
    
    
    UIButton *header3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 30)];
    [header3 setTitle:@"Third row" forState:UIControlStateNormal];
    
    thirdVC.view.frame = CGRectMake(0, 0, 0, 200);
    [accordion addHeader:header3 withView:thirdVC.view];
    
     
    
    UIButton *header4 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 30)];
    [header4 setTitle:@"Fourth row" forState:UIControlStateNormal];
    
    fourthVC.view.frame = CGRectMake(0, 0, 0, 200);
    [accordion addHeader:header4 withView:fourthVC.view];
    
      
    
    [accordion setNeedsLayout];
    
    // Set this if you want to allow multiple selection
    [accordion setAllowsMultipleSelection:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
