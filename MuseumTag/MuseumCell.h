//
//  MuseumCell.h
//  MuseumTag
//
//  Created by Deniz Kahramaner on 3/3/12.
//  Copyright (c) 2012 Stanford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MuseumCell : UITableViewCell {
    IBOutlet UILabel* nameLabel;
    IBOutlet UILabel* dateLabel;
}

@property (nonatomic, retain) IBOutlet UILabel* nameLabel;
@property (nonatomic, retain) IBOutlet UILabel* dateLabel;


@end
