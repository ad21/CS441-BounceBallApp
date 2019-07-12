//
//  ViewController.m
//  Cs441-BounceApp
//
//  Created by Adwait Magikar on 7/1/19.
//  Copyright © 2019 Adwait Magikar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIDynamicAnimator *animator;
    UIGravityBehavior *gravity;
    UICollisionBehavior *collision;
    UIDynamicItemBehavior *bounce;
}

@end

@implementation ViewController

-(IBAction)buttonIsClicked:(id)sender
{
    animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    
    gravity = [[UIGravityBehavior alloc]initWithItems:@[Football,Tennisball,Baseball]];
    
    [animator addBehavior:gravity];
    
    collision = [[UICollisionBehavior alloc]initWithItems:@[Football,Tennisball,Baseball]];
    
    collision.translatesReferenceBoundsIntoBoundary = YES;
    
    [animator addBehavior:collision];
    
    bounce = [[UIDynamicItemBehavior alloc]initWithItems:@[Football,Tennisball,Baseball]];
    
    [animator addBehavior:bounce];
   
    gravity = [[UIGravityBehavior alloc]initWithItems:@[Football,Tennisball]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
