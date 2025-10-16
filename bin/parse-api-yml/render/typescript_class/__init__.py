"""
Render a TypeScript interface.

Example:

```typescript
class Person {
    name: string;
    age: number;
};
```

Usage:

```typescript
const p = new Person();
p.name = "Alice";
p.age = 21;

function output(p: Person) {
    console.log(p.name);
    console.log(p.age);
}

output(p);
```
"""

from functools import partial
from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "class.ts")

def render(args, entities):
    return sh() + ''.join(map(partial(entity.render, args), entities))
