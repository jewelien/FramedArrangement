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
    NSLog(@"Screen width %f", screenWidth);
    CGFloat screenHeight = self.view.frame.size.height;
    NSLog(@"Screen height %f", screenHeight);
    
    //create a size for the square width and height.
    float squareWidth = screenWidth*.25;
    float squareHeight = screenHeight/8;
    NSLog(@"Square width is %f, height is %f.", squareWidth, squareHeight);
    
    //create first red square.
    self.redView.frame = CGRectMake(0, 0, squareWidth, squareHeight);
    //calculate red square's x and y.
    float redX = self.redView.frame.origin.x;
    float redY = self.redView.frame.origin.y;
    NSLog(@"Red = X %f. Y %f", redX, redY);

    //create green square.
    self.greenView.frame = CGRectMake(squareWidth, 0, squareWidth, squareHeight);
    //calculate green square's x and y.
    float greenX = self.greenView.frame.origin.x;
    float greenY = self.greenView.frame.origin.y;
    NSLog(@"Green = X %f. Y %f", greenX, greenY);
    
    self.blueView.frame = CGRectMake (0, squareHeight, squareWidth, squareHeight);
    float blueX = self.blueView.frame.origin.x;
    float blueY = self.blueView.frame.origin.y;
    NSLog(@"Blue = X %f. Y %f", blueX, blueY);
    
    self.yellowView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    float yellowX = self.yellowView.frame.origin.x;
    float yellowY = self.yellowView.frame.origin.y;
    NSLog(@"Yellow = X %f. Y %f", yellowX, yellowY);
    
}


//4 flat horizontal rectangles stacked
//Add a method called layoutHorizontalRectangles
//Calculate the width and height of the rectangles, and the y of each row
//- (void) layoutHorizontalRectangles {
//    
//}




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
