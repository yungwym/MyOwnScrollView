//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Alex Wymer  on 2017-07-10.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "MyScrollView.h"


@interface MyScrollView()

@property (nonatomic) UIPanGestureRecognizer *panGest;
@property (nonatomic) CGSize contentSize;
@property (nonatomic) CGFloat startPoint;

@end

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _panGest = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(screenPanned:)];
        [self addGestureRecognizer:_panGest];
        
        _contentSize = CGSizeMake(frame.size.width, frame.size.height);
        
    }
    return self;
}

-(void)screenPanned:(UIPanGestureRecognizer *)sender {
 
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        
        self.startPoint = self.bounds.origin.y; 
        
    }
    
    CGFloat maxY = self.bounds.size.height; 
    CGFloat minY = 0;
    
    if ((self.startPoint = [sender translationInView:self].y) < minY) {
        
        self.bounds = CGRectMake(self.bounds.origin.x, minY, self.contentSize.width, self.contentSize.height);\
        
    } else if ((self.startPoint = [sender translationInView:self].y) < maxY) {
        
        self.bounds = CGRectMake(self.bounds.origin.x, maxY, self.contentSize.width, self.contentSize.height);\

    } else {
        
        self.bounds = CGRectMake(self.bounds.origin.x, self.startPoint = [sender translationInView:self].y, self.contentSize.width, self.contentSize.height);
    }
}


@end
