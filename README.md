# Ente Isla Converter

Ente Isla Converter translates text from English into the language of Ente Isla, a fictional world from the series Hataraku Maou-sama!, and vice versa. The Ente Isla language is basically English with alphabet altered in a way that most consonants are in reverse order, e.g. 'b' becomes 'z', 'c' becomes 'y', and 'z' becomes 'b'. 'Hello World!' in Ente Isla language becomes 'Teqqo Fokqx!'

### Instructions

Compile the source file using a Haskell compiler such as GHC.

Run the executable.  
On Windows: `enteisla arg1 "arg2"`  
On Unix: `./enteisla arg1 "arg2"`

The program expects two arguments. The first argument specifies whether you want to translate from English to Ente Isla or the other way round.  
`-ent` - Translate from English into Ente Isla language.  
`-eng` - Translate from Ente Isla language to English.  
The second argument contains the text you want to translate.

The text you want to translate has to be wrapped in double quotation marks.

#### Usage examples

```
> enteisla -ent "Hello world!"
Teqqo fokqx!
```

```
> enteisla -eng "I qire ammqej"
I like apples
```
