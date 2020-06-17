//
//  ViewController.m
//  objcDebug
//
//  Created by Apple on 2020/6/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@implementation ViewController
{
    Person *sunny;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    sunny = [Person new];
    sunny.name  = @"sunny";
    sunny.age   = 18;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^{
        sunny = nil;
    });
    
    NSString *name = [NSString stringWithUTF8String:object_getClassName(self)];
    (void)name;
    
    __weak typeof(sunny) weakSunny = sunny;
    NSThread *thread = [[NSThread alloc] initWithBlock:^{
        weakSunny.name = @"weakSunny";
    }];
    [thread start];
    
    
    
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
