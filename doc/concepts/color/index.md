# Color

Any color and represented in a variety of ways.


## red green blue (and alpha)

* [color_point_rgb_with_byte](../color_point_rgb_with_byte): red, green, blue, implemented with byte

* [color_point_rgb_with_unit_interval](../color_point_cymka_with_unit_interval): red, green, blue, implemented with unit interval

* [color_point_rgba_with_byte](../color_point_rgba_with_byte): red, green, blue, alpha, implemented with byte

* [color_point_rgba_with_unit_interval](../color_point_rgba_with_unit_interval): red, green, blue, alpha, implemented with unit interval


## cyan yellow magenta (and alpha)

* [color_point_cymk_with_byte](../color_point_cymk_with_byte): cyan, yellow, magenta, black, implemented with byte

* [color_point_cymk_with_unit_interval](../color_point_cymka_with_unit_interval): cyan, yellow, magenta, black, implemented with unit interval

* [color_point_cymka_with_byte](../color_point_cymka_with_byte): cyan, yellow, magenta, black, alpha, implemented with byte

* [color_point_cymka_with_unit_interval](../color_point_cymka_with_unit_interval): cyan, yellow, magenta, black, alpha, implemented with unit interval


## Other

Attributes for code names:

* hex : char(6) -- example: "FF0088" means purple

* html_color_name : string+ -- see https://en.wikipedia.org/wiki/Web_colors#HTML_color_names

* x11_color_name : string+ -- see https://en.wikipedia.org/wiki/X11_color_names

* color_naming_system_name : string+ -- see https://en.wikipedia.org/wiki/Color_Naming_System

* pantone_color_name : string+ -- see https://en.wikipedia.org/wiki/Pantone


## Themes

You can use color point ids to create color themes.

Color choices suitable for a theme, such as a website theme, mobile app theme, etc.

Example for rankings:

* primary : color_point.id -- example: blue

* secondary : color_point.id -- example: indigo

* tertiary : color_point.id -- example: violet

Example for success/failure:

* success : color_point.id -- example: green

* failure : color_point.id -- example: red

Example for color choices suitable for Red Amber Green (RAG) status indicators:

* red : color_point.id -- example: color point id of "cherry red"

* amber : color_point.id -- example: color point id of "lemon yellow"

* green : color_point.id -- example: color point id of "forest green"

Example for light/dark themes:

* light_theme_foreground : color_point.id -- example: black text

* light_theme_background : color_point.id -- example: white paper

* dark_theme_foreground : color_point.id --  exmaple: white text

* dark_theme_background : color_point.id --  exmaple: black paper

Example for color choices suitable for sign indicators.

* safety : color_point.id -- example: the color green means safe

* caution : color_point.id --  example: the color yellow means caution

* warning : color_point.id -- example: the color orange means warning

* danger : color_point.id -- example:the color red means danger

Example for a log level theme:

* fatal : color_point.id -- example: the color black means died

* emergency : color_point.id -- example: the color brown means dying

* alert : color_point.id -- example: the color violet means an alert for a problem

* critical : color_point.id -- example: the color indigo means a critical problem

* error : color_point.id -- example: the color red means error

* warn : color_point.id -- example: the color orange means warning

* notice : color_point.id -- example: the color yellow means caution

* info : color_point.id --  exmaple: the color blue is typical for info

* debug : color_point.id --  example: the color gray represents all unknowns

* trace : color_point.id --  example: the color white represents all aspects
