//
//  ViewController.m
//  snapdemo
//
//  Created by 鐘妘甄 on 2017/7/4.
//  Copyright © 2017年 鐘妘甄. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIDynamicAnimator* animator;
@property (nonatomic, strong) UISnapBehavior* snap;
@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

-(IBAction)tapped:(id)sender
{
    UITapGestureRecognizer *tap = (UITapGestureRecognizer*) sender;
    CGPoint point = [tap locationInView:self.view];
    
    [self.animator removeBehavior:self.snap];
    
    UISnapBehavior *newSnap = [[UISnapBehavior alloc]initWithItem:self.imageView snapToPoint:point];
    self.snap = newSnap;
    
    [self.animator addBehavior:self.snap];
}

/*
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear: animated];
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[self.imageView]];
    
    [_animator addBehavior:gravity];
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc]initWithItems:@[self.imageView]];
    
    collision.translatesReferenceBoundsIntoBoundary = YES;
    
    [_animator addBehavior:collision];
}
*/


@end
