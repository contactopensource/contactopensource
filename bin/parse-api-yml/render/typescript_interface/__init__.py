"""
Render a TypeScript interface.

Example:

```typescript
interface Person {
    name: string;
    age: number;
};
```

Usage:

```typescript
let p: Person = {
    name: "Alice",
    age: 21
};

function output(p: Person) {
    console.log(p.name);
    console.log(p.age);
}

output(p);
```
"""

from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "interface.ts")

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
