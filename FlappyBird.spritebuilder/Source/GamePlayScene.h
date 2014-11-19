//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"

float timeSinceObstacle;

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    
    Character* character; //will store an instance of our Flappy Bird
    CCPhysicsNode *physicsNode;  //variable will ref a node that simulates Physics
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
