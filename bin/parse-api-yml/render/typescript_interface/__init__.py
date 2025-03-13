"""
Render a TypeScript interface.

Example:

```typescript
interface Person {
    name: string;
    age: number;
};
```
"""

from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "interface.ts")

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
