//
//  ExhibitCell.m
//  MuseumTag
//
//  Created by Deniz Kahramaner on 3/3/12.
//  Copyright (c) 2012 Stanford. All rights reserved.
//

#import "ExhibitCell.h"

@implementation ExhibitCell

@synthesize title, pic, description;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
