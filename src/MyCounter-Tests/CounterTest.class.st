"
Test class fot the methods of the Counter class
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [

			
	|c|
	c := Counter new.
	c count: 7.
	self assert: c count equals:7
]

{ #category : #tests }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c count: 2 ; decrement; decrement.
	self assert: c count equals: 0
]

{ #category : #tests }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c count: 0 ; increment; increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testValueeAtCreationTimeIsZero [
	self assert: Counter new count  equals:0
]

{ #category : #tests }
CounterTest >> testWithValue [

	| c |
	c := Counter withValue: 5.
	self assert: c count equals: 5
	
	
]
