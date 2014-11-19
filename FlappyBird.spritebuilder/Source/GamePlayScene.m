#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    //creates Flappy Bird character and adds it to the screen
    character = (Character*)[CCBReader load:@"Character"];  //loads new character named character from the CCB file
    [physicsNode addChild:character];  //adds character as child of physicsNode so that physics will be applied to it
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

//Add touch input functionality
-(void)touchBegan:(UITouch *)touch withEvent:(UIEVent *)event {
    //this is called each time the player touches the screen
    [character flap];
}

@end
