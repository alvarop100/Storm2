Class {
	#name : #WBATextDescriptor,
	#superclass : #WinterSpriteDescriptor,
	#category : #'Winter-Examples-WizardBattle'
}

{ #category : #Defaults }
WBATextDescriptor class >> availableText [
	^ #( 
	1
	2
	3
	4
	arena
	arrowLeft0
	arrowLeft1
	arrowRight0
	arrowRight1
	character
	player
	players
	season
	select
	spell
	title
	winner
	)
]

{ #category : #Bootstrap }
WBATextDescriptor >> classFolder [
	^ 'text/'
]

{ #category : #Bootstrap }
WBATextDescriptor >> loadSpritesWith: aSurface [

	self class availableText
		do: [ :key | 
			fileName := key asString.
			self loadImageFile ]
]

{ #category : #Bootstrap }
WBATextDescriptor >> spriteSize [

	^ 32 @ 48
]