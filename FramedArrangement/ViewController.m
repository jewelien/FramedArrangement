//
//  ViewController.m
//  FramedArrangement
//
//  Created by Julien Guanzon on 1/31/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIView *redView;
@property (nonatomic) UIView *greenView;
@property (nonatomic) UIView *blueView;
@property (nonatomic) UIView *yellowView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
}


////4 squares like a checkerboard
//Add a method called layoutSquares
//Calculate the width and height of the squares, the x of the second column and y of the second row
- (void)layoutSquares {
    [self.redView setFrame:CGRectMake(0,0,50,50)];
    
    [self.yellowView setFrame:CGRectMake(self.redView.frame.origin.x + self.redView.frame.size.width , 0 , 50, 50)];
    
    [self.greenView setFrame:CGRectMake(0, self.redView.frame.origin.y + self.redView.frame.size.height , 50,50)];
    
    [self.blueView setFrame: CGRectMake(self.greenView.frame.origin.x +self.greenView.frame.size.width, 50, 50, 50)];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
