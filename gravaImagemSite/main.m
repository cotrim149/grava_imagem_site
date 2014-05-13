//
//  main.m
//  gravaImagemSite
//
//  Created by ALS on 05/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
    
    NSString *pathLogo = @"http://www.bepid.com.br/brasilia/App_Themes/OnePage/images/logo.png";
    NSURL *bepidLogo = [NSURL URLWithString:pathLogo];
    
    NSString* pathFile = @"/Users/teste/Desktop/logo.png";
    
    NSData *logo = [[NSData alloc] initWithContentsOfURL:bepidLogo];
    
    NSError *erro;
    
    if(logo)
        NSLog(@"tem imagem aqui!");
    
    if([logo writeToFile:pathFile options:NSDataWritingAtomic error:&erro]){
        NSLog(@"Arquivo gravado com sucesso em %@",pathFile);
    }else{
        NSLog(@"Aqruivo nao foi gravado!");
    }
    
    return NSApplicationMain(argc, (const char **)argv);
}
