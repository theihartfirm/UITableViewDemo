//
//  CustomTableViewCell.h
//  UITableViewDemo
//
//  Created by Hardik Trivedi on 22/05/2016.
//  Copyright © 2016 TheiHartFirm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblColorName;
@property (weak, nonatomic) IBOutlet UIView *vwColor;

@end
