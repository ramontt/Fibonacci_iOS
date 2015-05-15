//
//  ViewController.m
//  Fibonacci
//
//  Created by Ramón García on 5/15/15.
//  Copyright (c) 2015 Ramón García. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _mem = [NSMutableDictionary new];
    
//    for(int i = 0; i < 100; i++ )
//        NSLog( @"Is %d Fibonacci? %d", i, [self isFibonacciNumber: i] );
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) calculateFibonacci
{
    int a = 0;
    int b = 1;
    int temp = 0;
    
    [_mem setObject:@"1" forKey: [NSString stringWithFormat:@"%d", 0]];
    [_mem setObject:@"1" forKey: [NSString stringWithFormat:@"%d", 1]];
    
    for(int i = 0; i < 44; i++ )
    {
        temp = a + b;
        //NSLog( @"%d\n", temp  );
        [_mem setObject:@"1" forKey: [NSString stringWithFormat:@"%d", temp]];
        a = b;
        b = temp;
    }
}

-(BOOL) isFibonacciNumber: (int) n
{
    static BOOL once = YES;
    if( once )
    {
        [self calculateFibonacci];
        once = NO;
    }
    
    return [_mem objectForKey: [NSString stringWithFormat:@"%d", n]] != nil;
}

@end
