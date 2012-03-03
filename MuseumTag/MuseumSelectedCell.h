//
//  MuseumSelectedCell.h
//  MuseumTag
//
//  Created by Deniz Kahramaner on 3/3/12.
//  Copyright (c) 2012 Stanford. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MuseumCell.h"

@interface MuseumSelectedCell : MuseumCell {
    IBOutlet UIImageView* museumImage;
    IBOutlet UIButton* revisitButton;
}

@property (nonatomic, retain) IBOutlet UIImageView* museumImage;
@property (nonatomic, retain) IBOutlet UIButton* revisitButton;


@end
