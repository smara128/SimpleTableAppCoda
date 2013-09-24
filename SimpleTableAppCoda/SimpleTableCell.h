//
//  SimpleTableCell.h
//  SimpleTableAppCoda
//
//  Created by me on 19/09/13.
//  Copyright (c) 2013 self. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;


@end
