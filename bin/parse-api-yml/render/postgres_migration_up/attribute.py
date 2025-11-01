def render(args, attribute):
    return f"  {attribute.id} {render_type(args, attribute)}{render_index(args, attribute)},\n"

def render_type(args, attribute):
    match attribute.id:
        case "latitude_as_decimal_degrees":
            return "numeric(9, 7)"
        case "longitude_as_decimal_degrees":
            return "numeric(10, 7)"
        case _:
            return attribute.type

def render_index(args, attribute):
    match attribute.id:
        case "latitude_as_decimal_degrees":
            return "CONSTRAINT location_latitude_as_decimal_degrees_check CHECK (location_latitude_as_decimal_degrees BETWEEN -90.0 AND 90.0)"
        case "longitude_as_decimal_degrees":
            return "CONSTRAINT location_longitude_as_decimal_degrees_check CHECK (location_longitude_as_decimal_degrees BETWEEN -180.0 AND 180.0)"
    match attribute.type:
        case "url":
            return f"CONSTRAINT {attribute.id}_check CHECK ({attribute.id} ~* '://')"
    return ""
