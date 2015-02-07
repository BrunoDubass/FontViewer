//
//  BDBFontViewController.h
//  FontViewer
//
//  Created by Bruno Domínguez on 03/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDBFontViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *fontTitle;
@property (weak, nonatomic) IBOutlet UILabel *fontText;

@property (strong, nonatomic) UIFont* fontN;

- (id)initWithFont:(UIFont*)font;

@end
