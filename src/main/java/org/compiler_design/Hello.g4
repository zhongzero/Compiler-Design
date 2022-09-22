// Define a grammar called Hello
grammar Hello;
r:'hello' ID
 |ID
 |'Hello3' ID ';'
 ;         // match keyword hello followed by an identifier
Begin:'begin';
ID:[a-z]+;             // match lower-case identifiers
WS:[ \t\r\n]+ -> skip; // skip spaces, tabs, newlines