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
//    [self layoutHorizontalRectangles];
//    [self layoutVerticalRectangles];
//    [self layoutDiagonalSquares];
    
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
    NSLog(@"Checkerboard square width is %f, height is %f.", squareWidth, squareHeight);
    
    self.redView.frame = CGRectMake(0, 0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, 0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake (0, squareHeight, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    
    float column2x = self.greenView.frame.origin.x;
    float row2y = self.blueView.frame.origin.y;
    NSLog(@"X of second column is %f. Y of second row is %f.", column2x, row2y);

}


//4 flat horizontal rectangles stacked
//Add a method called layoutHorizontalRectangles
//Calculate the width and height of the rectangles, and the y of each row
- (void) layoutHorizontalRectangles {
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat screenHeight = self.view.frame.size.height;
    NSLog(@"Screen width is %f, height is %f", screenWidth, screenHeight);
    
    //create rectangle height size. Width is screenWidth.
    float rectangleHeight = screenHeight*.10;
    NSLog(@"Horizontal rectangle width %f, height is %f", screenWidth, rectangleHeight);
    
    float startingY = screenHeight*.25;
    
    self.redView.frame = CGRectMake(0, startingY , screenWidth, rectangleHeight);
    self.greenView.frame = CGRectMake(0, startingY + rectangleHeight, screenWidth, rectangleHeight);
    self.blueView.frame = CGRectMake (0, self.greenView.frame.origin.y + rectangleHeight, screenWidth, rectangleHeight);
    self.yellowView.frame = CGRectMake(0, self.blueView.frame.origin.y + rectangleHeight, screenWidth, rectangleHeight);
    
    //y of each row
    float redY = self.redView.frame.origin.y;
    float greenY = self.greenView.frame.origin.y;
    float blueY = self.blueView.frame.origin.y;
    float yellowY = self.yellowView.frame.origin.y;
    NSLog(@"Y coordinate of each color. \n red:%f, green:%f, blue:%f, yellow:%f.", redY, greenY, blueY, yellowY);

}


//4 tall vertical rectangles
//Add a method called layoutVerticalRectangles
//Calculate the width and height of the rectangles, and the x of each column
- (void)layoutVerticalRectangles {
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat screenHeight = self.view.frame.size.height;
    NSLog(@"Screen width is %f, height is %f", screenWidth, screenHeight);
    
    //set width for the rectangles. height is screenHeight.
    float rectWidth = screenWidth*.25;
    NSLog(@"Vertical rectangle width is %f, height is %f.", rectWidth, screenHeight);
    
    self.redView.frame = CGRectMake(0, 0, rectWidth, screenHeight);
    self.greenView.frame = CGRectMake(rectWidth, 0, rectWidth, screenHeight);
    self.blueView.frame = CGRectMake (self.greenView.frame.origin.x + rectWidth, 0, rectWidth, screenHeight);
    self.yellowView.frame = CGRectMake(self.blueView.frame.origin.x + rectWidth, 0, rectWidth, screenHeight);
    
    //x of each column
    float redX = self.redView.frame.origin.x;
    float greenX = self.greenView.frame.origin.x;
    float blueX = self.blueView.frame.origin.x;
    float yellowX = self.yellowView.frame.origin.x;
    NSLog(@"X coordinate of each color. red:%f, green:%f, blue:%f, yellow:%f.", redX, greenX, blueX, yellowX);
    
}

//red green blue yellow
//4 squares arranged diagonally
//Add a method called layoutDiagonalSquares
//Calculate the width and height of the squares, the x and y of the each square
- (void)layoutDiagonalSquares {
    CGFloat screenWidth = self.view.frame.size.width;
    CGFloat screenHeight = self.view.frame.size.height;
    NSLog(@"Screen width is %f, screen height is %f.", screenWidth, screenHeight);
    
    //create a square shape.
    float squareWidth = screenWidth*.25;
    float squareHeight = screenHeight/8;
    NSLog(@"Diagonal square width is %f, height is %f.", squareWidth, squareHeight);
    
    self.redView.frame = CGRectMake(0, 0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(squareWidth * 2, squareHeight *2, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth * 3, squareHeight * 3, squareWidth, squareHeight);
    
    //x and y of each square
    NSLog(@"Red X is %f, Y is %f",self.redView.frame.origin.x, self.redView.frame.origin.y);
    NSLog(@"Green X is %f, Y is %f", self.greenView.frame.origin.x, self.greenView.frame.origin.y);
    NSLog(@"Blue X is %f, Y is %f", self.blueView.frame.origin.x, self.blueView.frame.origin.y);
    NSLog(@"Yellow X is %f, Y is %f", self.yellowView.frame.origin.x, self.yellowView.frame.origin.y);
    
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

