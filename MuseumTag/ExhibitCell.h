//
//  ExhibitCell.h
//  MuseumTag
//
//  Created by Deniz Kahramaner on 3/3/12.
//  Copyright (c) 2012 Stanford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExhibitCell : UITableViewCell {
    IBOutlet UIImageView* pic;
    IBOutlet UILabel* title;
    IBOutlet UITextView* description;
}

@property (nonatomic, retain) IBOutlet UIImageView* pic;
@property (nonatomic, retain) IBOutlet UILabel* title;
@property (nonatomic, retain) IBOutlet UITextView* description;


@end
