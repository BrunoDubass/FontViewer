//
//  BDBFontViewController.m
//  FontViewer
//
//  Created by Bruno Domínguez on 03/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import "BDBFontViewController.h"

@interface BDBFontViewController ()



@end

@implementation BDBFontViewController

- (id)initWithFont:(UIFont*)font{
    
    if (self = [super init]) {
        
        _fontN = font;
       
        NSLog(@"Se crea el super init");
        NSLog(@"%@", [font fontName]);
        
    }else{
        NSLog(@"No se crea el super init");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _fontTitle.text = [_fontN fontName];
    _fontTitle.font = [UIFont fontWithName:_fontN.fontName size:15.0];
    
    _fontText.font = [UIFont fontWithName:_fontN.fontName size:20.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
