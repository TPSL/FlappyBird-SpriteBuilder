#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    //your code here
    //creates Flappy Bird character and adds it to the screen
    character = (Character*)[CCBReader load:@"Character"];  //loads new character named character from the CCB file
    [physicsNode addChild:character];  //adds character as child of physicsNode so that physics will be applied to it
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    [character flap];
    
    //Increment the time since the last obstacle was addes
    timeSinceObstacle += delta;  //delta is approximately 1/60th of a second
    
    //Check to see if 2 seconds have passed
    if (timeSinceObstacle > 2.0F){
        //Add new obstacle
        [self addObstacle];
        
        //then reset the timer
        timeSinceObstacle = 0.0f;
    }

}

// put new methods here

//Add touch input functionality
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //this is called each time the player touches the screen
    [character flap];
}

@end
