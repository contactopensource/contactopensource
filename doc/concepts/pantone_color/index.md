# pantone_color

Pantone Process Color numbers start with the letter P followed by a one- to three-digit number, a dash, and a one- to two-digit number. The "C" suffix indicates coated stock and the "U" uncoated.

Attributes:

* key : string+ -- example: "Red 032 C". Always use Pantone format "{name} {code} {stock}".
  
* name : string+ -- example: "Red". Always use Pantone case, which is typically title case.

* code : string(3)+ -- example: "032" is red. Leading zero matters.

* stock : string(1)+ -- example: "C" indicates coated stock; "U" indicates uncoated stock.
