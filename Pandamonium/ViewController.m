//
//  ViewController.m
//  Pandamonium
//
//  Created by Jared Walton on 12/13/14.
//  Copyright (c) 2014 Jared Walton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    PandaMovement.center = CGPointMake(PandaMovement.center.x, PandaMovement.center.y - pandaHeight);
    [PandaMation2 startAnimating];
    //score++;
   // Score.text = [NSString stringWithFormat: @"%lu", (unsigned long)score];
}

-(void)PandaMovementOnScreen{
    PandaMation2.center = CGPointMake(PandaMation.center.x, PandaMation.center.y);
    if (PandaMovement.center.y > 250) {
        PandaMation.hidden = NO;
        [PandaMation startAnimating];
        PandaMation2.hidden = YES;
    }
    if (PandaMovement.center.y < 250){
        [PandaMation stopAnimating];
        PandaMation.hidden = YES;
        PandaMation2.hidden = NO;
    }
    if (PandaMovement.center.y < 285){
        PandaMovement.center = CGPointMake(PandaMovement.center.x, PandaMovement.center.y + PandaFall);
        PandaFall = 1;
    }
    if (PandaMovement.center.y > 285){
        PandaMovement.center = CGPointMake(PandaMovement.center.x,285);
    }
    if (PandaMovement.center.y < 28){
        PandaMovement.center = CGPointMake(PandaMovement.center.x,28);
    }
    
}
-(void)Bullet2Moving{
    Bullet2.center = CGPointMake(Bullet2.center.x + 1, Bullet2.center.y);
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle.hidden = YES;
        Obstacle.center = CGPointMake(0, Obstacle.center.y);
    }
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle2.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle2.hidden = YES;
        Obstacle2.center = CGPointMake(0, Obstacle2.center.y);
    }
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle3.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle3.hidden = YES;
        Obstacle3.center = CGPointMake(0, Obstacle3.center.y);
    }
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle4.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle4.hidden = YES;
        Obstacle4.center = CGPointMake(0, Obstacle4.center.y);
    }
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle5.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle5.hidden = YES;
        Obstacle5.center = CGPointMake(0, Obstacle5.center.y);
    }
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle6.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle6.hidden = YES;
        Obstacle6.center = CGPointMake(0, Obstacle6.center.y);
    }
    if (CGRectIntersectsRect(Bullet2.frame, Obstacle7.frame)) {
        Bullet2.center = CGPointMake(85, Bullet2.center.y);
        Obstacle7.hidden = YES;
        Obstacle7.center = CGPointMake(0, Obstacle7.center.y);
    }
}
-(void)BulletMoving{
    if (PandaMovement.center.y < 100) {
        Bullet.center = CGPointMake(Bullet.center.x + 5, Bullet.center.y);
        if (Bullet.center.x > 650){
            Bullet.center = CGPointMake(156, Bullet.center.y) ;
        }
    }
    if (PandaMovement.center.y > 100) {
        if (Bullet.center.x > 95) {
            Bullet.center = CGPointMake(Bullet.center.x + 5, Bullet.center.y);
        }
    }
}
-(void)ObstacleGenerator{
    [self GameOver];
    //moving towards mr Panda'
    Obstacle.center = CGPointMake(Obstacle.center.x - X, Obstacle.center.y);
    Obstacle2.center = CGPointMake(Obstacle2.center.x - X, Obstacle2.center.y);
    Obstacle3.center = CGPointMake(Obstacle3.center.x - X, Obstacle3.center.y);
    Obstacle4.center = CGPointMake(Obstacle4.center.x - X, Obstacle4.center.y);
    Obstacle5.center = CGPointMake(Obstacle5.center.x - X, Obstacle5.center.y);
    Obstacle6.center = CGPointMake(Obstacle6.center.x - X, Obstacle6.center.y);
    Obstacle7.center = CGPointMake(Obstacle7.center.x - X, Obstacle7.center.y);
    X = 2;
}
-(void)InitialObstaclePlacement{
    ObstacleY = 1500;
    ObstacleX = ObstacleX + (arc4random() % 50 + addwidth);
    Obstacle.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle.hidden = NO;
    PlacementRepeater = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(ObstaclePlacement) userInfo:nil repeats:NO];
}
-(void)ObstaclePlacement{
    ObstacleY = arc4random() % 100 + addheight;
    ObstacleX = arc4random() % 50 + addwidth;
    Obstacle7.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle7.hidden = NO;
    PlacementRepeater2 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ObstaclePlacement2) userInfo:nil repeats:NO];

}
-(void)ObstaclePlacement2{
    ObstacleY = arc4random() % 100 + addheight;
    ObstacleX = arc4random() % 50 + addwidth;
    Obstacle2.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle2.hidden = NO;
    PlacementRepeater3 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ObstaclePlacement3) userInfo:nil repeats:NO];
}
-(void)ObstaclePlacement3{
    ObstacleY = arc4random() % 100 + addheight;
    ObstacleX = arc4random() % 50 + addwidth;
    Obstacle3.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle3.hidden = NO;
    PlacementRepeater4 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ObstaclePlacement4) userInfo:nil repeats:NO];
}
-(void)ObstaclePlacement4{
    ObstacleY = arc4random() % 100 + addheight;
    ObstacleX = arc4random() % 50 + addwidth;
    Obstacle4.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle4.hidden = NO;
    PlacementRepeater5 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ObstaclePlacement5) userInfo:nil repeats:NO];
}
-(void)ObstaclePlacement5{
    ObstacleY = arc4random() % 100 + addheight;
    ObstacleX = arc4random() % 50 + addwidth;
    Obstacle5.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle5.hidden = NO;
    PlacementRepeater6 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ObstaclePlacement6) userInfo:nil repeats:NO];
}
-(void)ObstaclePlacement6{
    ObstacleY = arc4random() % 100 + addheight;
    ObstacleX = arc4random() % 50 + addwidth;
    Obstacle6.center = CGPointMake(ObstacleX, ObstacleY);
    Obstacle6.hidden = NO;
    PlacementRepeater7 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ObstaclePlacement) userInfo:nil repeats:NO];
}
-(void)GameOver{
    if (CGRectIntersectsRect(PandaMovement.frame, Bullet.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        [BulletMovement invalidate];
        gameOver.hidden = NO;
        Bullet.hidden = YES;
        bulletMessage.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle2.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle3.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle4.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle5.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle6.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
    if (CGRectIntersectsRect(PandaMovement.frame, Obstacle7.frame)) {
        X = 0;
        pandaHeight = 0;
        [CloudaMation stopAnimating];
        [TankaMation stopAnimating];
        [TankaMation2 stopAnimating];
        [TankaMation3 stopAnimating];
        [TankaMation4 stopAnimating];
        [TankaMation5 stopAnimating];
        [TankaMation6 stopAnimating];
        [PandaMation stopAnimating];
        [repeater invalidate];
        [PandaMovementRepeater invalidate];
        [PlacementRepeater invalidate];
        gameOver.hidden = NO;
    }
}
- (void)viewDidLoad {
    pandaHeight = 50;
    bulletSpeed = 3;
    addwidth = 700;
    addheight = 250;
    ObstacleX = 500;
    repeater = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(ObstacleGenerator) userInfo:nil repeats:YES];
    InitialPlacementRepeater = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(InitialObstaclePlacement) userInfo:nil repeats:NO];
    PandaMovementRepeater = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(PandaMovementOnScreen) userInfo:nil repeats:YES];
    BulletMovement = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(BulletMoving) userInfo:nil repeats:YES];
    Bullet2Movement = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(Bullet2Moving) userInfo:nil repeats:YES];
    //ScoreTimer = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(scoring) userInfo:nil repeats:YES];
    TankaMation.animationImages = [NSArray arrayWithObjects:
                                    [UIImage imageNamed:@"spoke1.gif"],
                                    [UIImage imageNamed: @"spoke2.gif"],nil];
    [TankaMation setAnimationRepeatCount:0];
    TankaMation.animationDuration = .1;
    [TankaMation startAnimating];
    TankaMation2.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"spoke1.gif"],
                                   [UIImage imageNamed: @"spoke2.gif"],nil];
    [TankaMation2 setAnimationRepeatCount:0];
    TankaMation2.animationDuration = .1;
    [TankaMation2 startAnimating];
    TankaMation3.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"spoke1.gif"],
                                   [UIImage imageNamed: @"spoke2.gif"],nil];
    [TankaMation3 setAnimationRepeatCount:0];
    TankaMation3.animationDuration = .1;
    [TankaMation3 startAnimating];
    TankaMation4.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"spoke1.gif"],
                                   [UIImage imageNamed: @"spoke2.gif"],nil];
    [TankaMation4 setAnimationRepeatCount:0];
    TankaMation4.animationDuration = .1;
    [TankaMation4 startAnimating];
    TankaMation5.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"spoke1.gif"],
                                   [UIImage imageNamed: @"spoke2.gif"],nil];
    [TankaMation5 setAnimationRepeatCount:0];
    TankaMation5.animationDuration = .1;
    [TankaMation5 startAnimating];
    TankaMation6.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"spoke1.gif"],
                                   [UIImage imageNamed: @"spoke2.gif"],nil];
    [TankaMation6 setAnimationRepeatCount:0];
    TankaMation6.animationDuration = .1;
    [TankaMation6 startAnimating];
    
    CloudaMation.animationImages = [NSArray arrayWithObjects:
                                    [UIImage imageNamed:@"Clouds54.gif"],
                                    [UIImage imageNamed:@"Clouds53.gif"],
                                    [UIImage imageNamed:@"Clouds52.gif"],
                                    [UIImage imageNamed:@"Clouds51.gif"],
                                    [UIImage imageNamed:@"Clouds50.gif"],
                                    [UIImage imageNamed:@"Clouds49.gif"],
                                    [UIImage imageNamed:@"Clouds48.gif"],
                                    [UIImage imageNamed:@"Clouds47.gif"],
                                    [UIImage imageNamed:@"Clouds46.gif"],
                                    [UIImage imageNamed:@"Clouds45.gif"],
                                    [UIImage imageNamed:@"Clouds44.gif"],
                                    [UIImage imageNamed:@"Clouds43.gif"],
                                    [UIImage imageNamed:@"Clouds42.gif"],
                                    [UIImage imageNamed:@"Clouds41.gif"],
                                    [UIImage imageNamed:@"Clouds40.gif"],
                                    [UIImage imageNamed:@"Clouds39.gif"],
                                    [UIImage imageNamed:@"Clouds38.gif"],
                                    [UIImage imageNamed:@"Clouds37.gif"],
                                    [UIImage imageNamed:@"Clouds36.gif"],
                                    [UIImage imageNamed:@"Clouds35.gif"],
                                    [UIImage imageNamed:@"Clouds34.gif"],
                                    [UIImage imageNamed:@"Clouds33.gif"],
                                    [UIImage imageNamed:@"Clouds32.gif"],
                                    [UIImage imageNamed:@"Clouds31.gif"],
                                    [UIImage imageNamed:@"Clouds30.gif"],
                                    [UIImage imageNamed:@"Clouds29.gif"],
                                    [UIImage imageNamed:@"Clouds28.gif"],
                                    [UIImage imageNamed:@"Clouds27.gif"],
                                    [UIImage imageNamed:@"Clouds26.gif"],
                                    [UIImage imageNamed:@"Clouds25.gif"],
                                    [UIImage imageNamed:@"Clouds24.gif"],
                                    [UIImage imageNamed:@"Clouds23.gif"],
                                    [UIImage imageNamed:@"Clouds22.gif"],
                                    [UIImage imageNamed:@"Clouds21.gif"],
                                    [UIImage imageNamed:@"Clouds20.gif"],
                                    [UIImage imageNamed:@"Clouds19.gif"],
                                    [UIImage imageNamed:@"Clouds18.gif"],
                                    [UIImage imageNamed:@"Clouds17.gif"],
                                    [UIImage imageNamed:@"Clouds16.gif"],
                                    [UIImage imageNamed:@"Clouds15.gif"],
                                    [UIImage imageNamed:@"Clouds14.gif"],
                                    [UIImage imageNamed:@"Clouds13.gif"],
                                    [UIImage imageNamed:@"Clouds12.gif"],
                                    [UIImage imageNamed:@"Clouds11.gif"],
                                    [UIImage imageNamed:@"Clouds10.gif"],
                                    [UIImage imageNamed:@"Clouds9.gif"],
                                    [UIImage imageNamed:@"Clouds8.gif"],
                                    [UIImage imageNamed:@"Clouds7.gif"],
                                    [UIImage imageNamed:@"Clouds6.gif"],
                                    [UIImage imageNamed:@"Clouds5.gif"],
                                    [UIImage imageNamed:@"Clouds4.gif"],
                                    [UIImage imageNamed:@"Clouds3.gif"],
                                    [UIImage imageNamed:@"Clouds2.gif"],
                                    [UIImage imageNamed:@"Clouds.gif"],nil];
    [CloudaMation setAnimationRepeatCount:0];
    CloudaMation.animationDuration = 1;
    [CloudaMation startAnimating];

    
    PandaMation.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"Panda1.gif"],
                                   [UIImage imageNamed:@"Panda2.gif"],
                                   [UIImage imageNamed:@"Panda3.gif"], nil];
    [PandaMation setAnimationRepeatCount:0];
    PandaMation.animationDuration = .2;
    
    PandaMation2.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"Panda4.gif"],
                                   [UIImage imageNamed:@"Panda5.gif"],
                                   [UIImage imageNamed:@"Panda6.gif"], nil];
    [PandaMation2 setAnimationRepeatCount:3];
    PandaMation2.animationDuration = .2;
    
    [super viewDidLoad];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
