//
//  Pokemon+DataController.h
//  Pokemon
//
//  Created by Kaijie Yu on 2/17/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "Pokemon.h"
#import "PokemonConstants.h"

@interface Pokemon (DataController)

+ (void)hardUpdateData;

+ (NSArray *)queryAllData;
+ (Pokemon *)queryPokemonDataWithSID:(NSInteger)pokemonSID;
+ (NSArray *)SIDsForHabitat:(PokemonHabitat)habitat;

// Basic Data
- (NSInteger)expAtLevel:(NSInteger)level;
- (NSInteger)expToNextLevel:(NSInteger)nextLevel;
- (double)moveDamageEffectOnOpponentPokemon:(Pokemon *)opponentPokemon;

@end
