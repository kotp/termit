#Termit [![Build Status](https://travis-ci.org/pawurb/termit.png)](https://travis-ci.org/pawurb/termit) [![Gem Version](https://badge.fury.io/rb/termit.png)](http://badge.fury.io/rb/termit) [![Coverage Status](https://coveralls.io/repos/pawurb/termit/badge.png)](https://coveralls.io/r/pawurb/termit)


Termit is an easy way to use Google Translate in your terminal.

## Installation
```ruby
gem install termit
```

## Usage
```ruby
termit 'source_language' 'target_language' 'text'
```

Example:

```ruby

termit en es "hey cowboy where is your horse?"
=> "Hey vaquero dónde está tu caballo?"

termit fr en "qui est votre papa?"
=> "Who's Your Daddy?"
```

Parenthesis are not necessary for text data input:
```ruby
termit fr ru qui est votre papa?
=> "Кто твой папочка?"
```
#### Speech synthesis

Specify a **-t** (talk) flag to use speech synthesis (requires mpg123):
``` ruby
termit en zh "hey cowboy where is your horse?" -t
=> "嘿，牛仔是你的马在哪里？" #and a chinese voice says something about a horse
```

#### Synonyms

Specify a **-s** (synonyms) flag to get the list of synonyms if available:
``` ruby
termit es en muchacho -s
=> boy
=> Synonyms: boy, lad, youngster, laddie, cully
```

## Language codes:
* automatic source language detection - auto
* af = Afrikaans
* ar = Arabic
* az = Azerbaijani
* be = Belarusian
* bg = Bulgarian
* bn = Bengali
* bs = Bosnian
* ca = Catalan
* ceb = Cebuano
* cs = Czech
* cy = Welsh
* da = Danish
* de = German
* el = Greek
* en = English
* eo = Esperanto
* es = Spanish
* et = Estonian
* eu = Basque
* fa = Persian
* fi = Finnish
* fr = French
* ga = Irish
* gl = Galician
* gu = Gujarati
* hi = Hindi
* hmn = Hmong
* hr = Croatian
* ht = Haitian Creole
* hu = Hungarian
* hy = Armenian
* id = Indonesian
* is = Icelandic
* it = Italian
* iw = Hebrew
* ja = Japanese
* jw = Javanese
* ka = Georgian
* km = Khmer
* kn = Kannada
* ko = Korean
* la = Latin
* lo = Lao
* lt = Lithuanian
* lv = Latvian
* mk = Macedonian
* mr = Marathi
* ms = Malay
* mt = Maltese
* nl = Dutch
* no = Norwegian
* pl = Polish
* pt = Portuguese
* ro = Romanian
* ru = Russian
* sk = Slovak
* sl = Slovenian
* sq = Albanian
* sr = Serbian
* sv = Swedish
* sw = Swahili
* ta = Tamil
* te = Telugu
* th = Thai
* tl = Filipino
* tr = Turkish
* uk = Ukrainian
* ur = Urdu
* vi = Vietnamese
* yi = Yiddish
* zh-CN = Chinese (Simplified)
* zh-TW = Chinese (Traditional)

To find all available language codes visit www.translate.google.com.
Choose langauges and their codes will appear in the url.

## Requirements

Works with Ruby 1.9.2 and higher.

To use speech synthesis you need to have mpg123 installed.

For Ubuntu:

    sudo apt-get install mpg123

For MacOSX:

    brew install mpg123

## Status

This is my first open-source project for people to use. Any feedback
will be appreciated.

You can contact me on: p.urbanek89@gmail.com

Btw. I am looking for a job as a rails developer now and I am willing to
relocate.



