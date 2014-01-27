//
//  AppDelegate.m
//  Donatello
//
//  Copyright (c) 2014 KASKA (http://kaska.jp)
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  Icon by Anand A Nair (http://thenounproject.com/anandgrafiti/)
//  Creative Commons – Attribution (CC BY 3.0) (http://creativecommons.org/licenses/by/3.0/us/)
//

#import "AppDelegate.h"

@implementation AppDelegate

NSStatusItem *statusItem;
NSMenu *donatelloMenu;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSMenuItem *tItem = nil;
    
    donatelloMenu = [[NSMenu alloc] initWithTitle:@""];
    [donatelloMenu setAutoenablesItems:NO];
    
    [donatelloMenu addItemWithTitle:@"5 Words" action:@selector(saveToClipboard:) keyEquivalent:@""];
    [donatelloMenu addItemWithTitle:@"1 Sentence" action:@selector(saveToClipboard:) keyEquivalent:@""];
    [donatelloMenu addItemWithTitle:@"1 Paragraph" action:@selector(saveToClipboard:) keyEquivalent:@""];
    [donatelloMenu addItemWithTitle:@"3 Paragraphs" action:@selector(saveToClipboard:) keyEquivalent:@""];
    [donatelloMenu addItemWithTitle:@"10 Paragraphs" action:@selector(saveToClipboard:) keyEquivalent:@""];
    
    [donatelloMenu addItem:[NSMenuItem separatorItem]];
    
    tItem = [donatelloMenu addItemWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@""];
    [tItem setKeyEquivalentModifierMask:NSCommandKeyMask];
    
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    statusItem = [statusBar statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setImage:[NSImage imageNamed:@"donatello_18.png"]];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu:donatelloMenu];
}

-(void)saveToClipboard:(id)sender
{
    //NSLog(@"sender: %@", [sender title]);
    [[NSPasteboard generalPasteboard]clearContents];
    if([[sender title] isEqualToString:@"5 Words"]) {
        [[NSPasteboard generalPasteboard]setString:@"I need more power captain" forType:NSPasteboardTypeString];
    }
    else if([[sender title] isEqualToString:@"1 Sentence"]) {
        [[NSPasteboard generalPasteboard]setString:@"Ninja dropout, you know, you talk way too much for a living statue." forType:NSPasteboardTypeString];
    }
    else if([[sender title] isEqualToString:@"1 Paragraph"]) {
        [[NSPasteboard generalPasteboard]setString:@"Leo, don't, a true Ninja is a master of himself and his environment, so don't forget: We're turtles! Listen, Raph, about what I said before. You know, about not needing you and all. What do we have to do to stop this guy?" forType:NSPasteboardTypeString];
    }
    else if([[sender title] isEqualToString:@"3 Paragraphs"]) {
        [[NSPasteboard generalPasteboard]setString:@"Amazing, guys, and I thought all the really good dungeons were in Europe, mellow out, BUGS! I loOove being a turtle! Ladies and mutants, how NOT to tell our origin story, whuh-oh! It's that retro-muto-thingamabob! Help I'm a turtle and I can't get up.\n\nDon't have a cow, man, by \"we\", you mean me. And I don't have the time. There's too much to do around here. Besides, where would we keep the thing? What do we have to do to stop this guy? Well, it is cool. It's not my fault I'm the only one who reads.\n\nGive me a break, no, because an evil prisoner they were transporting across the galaxy sabotaged their starship, causing them to crash land on Earth centuries ago. And they've been trapped here ever since. And who was this evil prisoner that caused the Utroms so much trouble? He was in fact... Drumroll please. Wise men say forgiveness is devine, but never pay full price for late pizza, you know, you talk way too much for a living statue." forType:NSPasteboardTypeString];
    }
    else if([[sender title] isEqualToString:@"10 Paragraphs"]) {
        [[NSPasteboard generalPasteboard]setString:@"What a joke. That was hardly even a warm up, hey Krang, bring that statue back, you bloated bean bag, help I'm a turtle and I can't get up. Who's da turtle? Because they were late for dinner? Look, I don't wanna fight you.\n\nWell, guess this is it, what's the matter, dude? Haven't you seen four foot tall turtles before? Oh, just the regular stuff: flies, stink bugs... It was a joke. Of the teenage mutant ninja variety, sleezball! Hey Krang, bring that statue back, you bloated bean bag.\n\nAll right, never mind. Don't like green, huh? How about black and blue? A kitchen utencil? It's time for the ol' rubber aquarium, bingo. Yeah, we're dealing with a real mind here.\n\nDo you think I could *possibly* live without a single microchip? Hey Michaelangelo, how come you're not shouting 'cowabunga'? If we don't come back in two-and-a-half days, we're turtle soup.\n\nHow 'bout, uh, Sayonara? There you are. I've got your pizza, are you hungry? Pizza power! Blech! Thanks for doing all the shopping for us, Keno, amazing, guys, and I thought all the really good dungeons were in Europe.\n\nUgh. Where do they come up with this stuff? Wrong show, about 512, Sensai. Help I'm a turtle and I can't get up, hey Krang, bring that statue back, you bloated bean bag.\n\nMan! This stuff is rank! Boy, do I hate spinach, hey it was worth a try. C'mon, figure a way out of this, this looks like a job for the Teenage Mutant Ninja Turtles, PARTYYYYYYYYY! Geez, Master Splinter, now you're backseat Ninja-ing me too.\n\nPARTYYYYYYYYY! April, I can't hear you. Can you talk a little louder? Um, not to criticize science or anything, but wouldn't it be easier just to call it 'the pink one'? Whuh-oh! It's that retro-muto-thingamabob!\n\nWhoa, leg-o-rama! Of course not, Master Splinter, about 512, Sensai. What would you call our new digs? The Shellter? Boy, do I hate spinach, all right, never mind. Don't like green, huh? How about black and blue?\n\nI dunno. I went into the kitchen for some popcorn, I really wish you'd stop saying things like that, yeah, they dress funny too! We're not delivering a baby, dimbo! Think of it the bright side, April. We could've landed in a great, big, greasy pile of... pizza power!" forType:NSPasteboardTypeString];
    }
    
}

@end