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
    
    [self layoutSquares];

    
}


////4 squares like a checkerboard
//Add a method called layoutSquares
//Calculate the width and height of the squares, the x of the second column and y of the second row
- (void)layoutSquares {
    //calculate screen size.
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat screenHeight = self.view.frame.size.height;
    NSLog(@"Screen width is %f, height is %f", screenWidth, screenHeight);
    
    //create a size for the square width and height.
    float squareWidth = screenWidth*.25;
    float squareHeight = screenHeight/8;
    NSLog(@"Square width is %f, height is %f.", squareWidth, squareHeight);
    
    self.redView.frame = CGRectMake(0, 0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, 0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake (0, squareHeight, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    
    int column2x = self.greenView.frame.origin.x;
    int row2y = self.blueView.frame.origin.y;
    NSLog(@"X of second column is %d. Y of second row is %d.", column2x, row2y);

}


//4 flat horizontal rectangles stacked
//Add a method called layoutHorizontalRectangles
//Calculate the width and height of the rectangles, and the y of each row
- (void) layoutHorizontalRectangles {
    
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
