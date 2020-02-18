//
//  FlutterScreenViewController.m
//  Issue48630Framework
//
//  Created by Almas Adilbek on 2/17/20.
//  Copyright © 2020 BTS Digital. All rights reserved.
//

#import "FlutterScreenViewController.h"
#import "FlutterManager.h"

@interface FlutterScreenViewController ()
@property (nonatomic, strong) FlutterManager *manager;
@end

@implementation FlutterScreenViewController

- (instancetype)init {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _manager = [[FlutterManager alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addFlutterChildViewController:_manager.controller];
}

- (void)addFlutterChildViewController:(UIViewController *)controller {
    controller.view.frame = self.view.bounds;
    [self.view insertSubview:controller.view atIndex:0];
    [self addChildViewController:controller];
    [controller didMoveToParentViewController:self];
}

@end
