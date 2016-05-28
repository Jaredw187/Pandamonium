//
//  ViewController.h
//  Pandamonium
//
//  Created by Jared Walton on 12/13/14.
//  Copyright (c) 2014 Jared Walton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIImageView *PandaMation;
    IBOutlet UIImageView *PandaMation2;
    IBOutlet UIImageView *BackGroundaMation;
    IBOutlet UIImageView *CloudaMation;
    IBOutlet UIImageView *TankaMation;
    IBOutlet UIImageView *TankaMation2;
    IBOutlet UIImageView *TankaMation3;
    IBOutlet UIImageView *TankaMation4;
    IBOutlet UIImageView *TankaMation5;
    IBOutlet UIImageView *TankaMation6;
    IBOutlet UIImageView *Bullet;
    IBOutlet UIImageView *Bullet2;
    IBOutlet UIImageView *PandaMovement;
    IBOutlet UIImageView *PlaneMovement;
    IBOutlet UIImageView *Obstacle;
    IBOutlet UIImageView *Obstacle2;
    IBOutlet UIImageView *Obstacle3;
    IBOutlet UIImageView *Obstacle4;
    IBOutlet UIImageView *Obstacle5;
    IBOutlet UIImageView *Obstacle6;
    IBOutlet UIImageView *Obstacle7;
    IBOutlet UILabel *testing;
    IBOutlet UILabel *gameOver;
    IBOutlet UILabel *bulletMessage;
    IBOutlet UILabel *obstacleMessage;
    IBOutlet UILabel *Score;
    NSTimer *repeater;
    NSTimer *BulletMovement;
    NSTimer *Bullet2Movement;
    NSTimer *PandaMovementRepeater;
    NSTimer *InitialPlacementRepeater;
    NSTimer *PlacementRepeater;
    NSTimer *PlacementRepeater2;
    NSTimer *PlacementRepeater3;
    NSTimer *PlacementRepeater4;
    NSTimer *PlacementRepeater5;
    NSTimer *PlacementRepeater6;
    NSTimer *PlacementRepeater7;
    NSTimer *startTimer;
    NSTimer *ScoreTimer;
    int randNum;
    int bulletSpeed;
    int pandaHeight;
    int PandaFall;
    int X;
    int Y;
    int ObstacleX;
    int ObstacleY;
    int PandaFly;
    int addheight;
    int addwidth;
    int f;
    NSInteger score;
    
}
-(void)PandaMovementOnScreen;
@end

