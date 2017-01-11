//
//  ViewController.m
//  DatePickerExample
//
//  Created by pcadmin on 1/7/17.
//  Copyright © 2017 pcadmin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)displayDay:(id)sender {
    
    // grab the date from date picker control.
    NSDate *chosen = [self.datePicker date];
    // create a date formatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"EEEE"];
    NSString *weekday = [formatter stringFromDate:chosen];
    NSString *msg = [[NSString alloc] initWithFormat:@"That's a %@", weekday ];
    
    UIAlertController *action = [UIAlertController alertControllerWithTitle:@"Day of the week" message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    [self presentViewController:action animated:YES completion:nil];

    NSLog(@"In the displayDay method");
    
    
    //akdjf
    
    
    //
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
