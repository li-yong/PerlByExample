#!/usr/bin/perl -w
use strict;

#quantifier: ???
#quantifier possessive:
# * is greedy, *? is lazy, and *+ is possessive. ++, ?+ and {n,m}+ are all possessive as well.


#if ("abc"=~/a/){print 1};

#if ('$()*+.?[\^{|'=~/\$\(\)\*\+\.\?\[\\\^\{\|/){print 1};
#if ("calendar"=~/c[ae]l[ae]nd[ae]r/){print 1};
#if ("calendar123"=~/([a-zA-Z])/){print $1};
#if (" "=~/\s/){print 1}; #white space
#if ("notWhiteSpace"=~/\S/){print 1};
#if ("123"=~/\d/){print 1};
#if ("notDigital"=~/\D/){print 1};
#if ("asiic"=~/\w/){print 1}; #Alphanumeric characters plus "_"
#NOTWORK if ("\n"=~/\w/){print 1}; #Non-word characters
#if ("aaa"=~/a{3,5}/){print 1}else{print 0}; #match aaa,aaaa,aaaaa
#if("abcdef"=~/([abc|def])/){print $1}; #match 'a' []only match one lettle.
#if("ab"=~/([abc|def])/){print $1}; #match a
#if("ab"=~/(abc|def)/){print $1}; #not match.
#if("abcdef"=~/(abc|def)/){print $1}; #match abc

#if('on <January 26>, <2004>.' =~/(<.*>)/){print $1}; #<January 26>, <2004>
#if('on <January 26>, <2004>.' =~/(<.*?>)/){print $1}; #<January 26>

#if("one\ntwo\n\nfour"=~/^one/){print 1}; #1
#if("one\ntwo\n\nfour"=~/four$/){print 1}; #1
#if("one\ntwo\n\nfour"=~/\Aone/){print 1}; #1  Start of the subject
#if("one\ntwo\n\nfour"=~/four\Z/){print 1}; #1 end of the subject

#if("one\ntwo\n\nfour"=~/^two/){print 1}; #0
#if("one\ntwo\n\nfour"=~/two$/){print 1}; #0
#if("one\ntwo\n\nfour"=~/\Atwo/){print 1}; #0
#if("one\ntwo\n\nfour"=~/two\Z/){print 1}; #0

#if("My Cat is brown"=~/(\bcat\b)/i){print $1}; #\b boundary
#if("category is brown"=~/(\bcat\B)/i){print $1}; #\B none boundary


#if("2008-08-08"=~/\b\d\d(\d\d)-\1-\1\b/){print 1}; #\1,backreference. magical date, match previously matched text again.
#if("100000"=~/\d{5}/){print 1}; #repeat part

#if('123abc 456,'=~/(\b\d+\b)/){print $1}; #'456'
#not work in perl. if('123abc 456,'=~/(\b\d*+\b)/){print $1}; #quantifier possessive

#if('My <b>cat</b> is furry'=~/(?<=<b>)(\w+)/){print $1}; #cat. lookbehind  (?<=), Without Adding It to the Overall Match
#if('My <b>cat</b> is furry'=~/(\w+)(?=<\/b>)/){print $1}; #cat. lookahead  (?=), Without Adding It to the Overall Match
#if('My <b>cat</b> is furry'=~/(?<=<b>)(\w+)(?=<\/b>)/){print $1}; #cat. 


#Free-spacing (x), comments
if('2008-08-08'=~/
    \d{4}  # Year
    -      # Separator
    \d{2}  # Month
    -      #Separator
    \d{2}  # Day
/x){print 1};
