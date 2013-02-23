#import "ViewController.h"

@interface ViewController ()

-(NSDictionary*) buildDictionaryFromUserInput;
-(NSData*) serializeJSON:(NSDictionary*) userInput;
-(void) displaySerializedJSONData: (NSData*) jsonData;
-(NSDictionary*) deserializeJSONData:(NSData*) jsonData;
-(void) displayDeserializedData:(NSDictionary*) deserializedJSON;

@end

@implementation ViewController

@synthesize dateInput, nameInput, jsonLabel, deserializedNameLabel, deserializedDateLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.formatter = [NSDateFormatter new];
    [self.formatter setDateStyle: NSDateFormatterShortStyle];
}

-(IBAction) serializeAndDeserializeJSON {
    NSDictionary* userInput = [self buildDictionaryFromUserInput];
    NSData* jsonData = [self serializeJSON: userInput];
    [self displaySerializedJSONData: jsonData];
    [self displayDeserializedData: [self deserializeJSONData: jsonData]];
}

-(NSDictionary*) buildDictionaryFromUserInput {
    return [NSDictionary dictionaryWithObjectsAndKeys:
            self.nameInput.text, @"name",
            [self.formatter stringFromDate: self.dateInput.date], @"date",
            nil];
}

-(NSData*) serializeJSON:(NSDictionary*) userInput {
    NSError* error;
    return [NSJSONSerialization dataWithJSONObject: userInput
                                           options: NSJSONWritingPrettyPrinted
                                             error: &error];
}

-(void) displaySerializedJSONData: (NSData*) jsonData {
    jsonLabel.text = [[NSString alloc] initWithData: jsonData
                                           encoding: NSUTF8StringEncoding];
}

-(NSDictionary*) deserializeJSONData:(NSData *)jsonData {
    NSError* error;
    return [NSJSONSerialization JSONObjectWithData: jsonData
                                           options: NSJSONReadingMutableContainers
                                             error: &error];
}

-(void) displayDeserializedData:(NSDictionary*) deserializedJSON {
    NSDate* deserializedDate = [self.formatter dateFromString: [deserializedJSON objectForKey: @"date"]];
    self.deserializedNameLabel.text = [deserializedJSON objectForKey: @"name"];
    self.deserializedDateLabel.text = [NSString stringWithFormat: @"%@", deserializedDate];
}

@end
