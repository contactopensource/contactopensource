# access package

For attribute-based access control (ABAC).

Concepts:

* [access_tenant](../access_tenant/)

* [access_occupancy](../access_occupancy/)

* [access_agent](../access_agent/)

* [access_assignment](../access_assignment/)

* [access_attribute](../access_attribute/)

* [access_permission](../access_permission/)

* [access_operation](../access_operation/)


## Diagram

```monopic
┌──────────────────────────┐
│ access_tenant            │
└──────────────────────────┘
              │
              ○
             ╱│╲
┌──────────────────────────┐
│ access_occupancy         │
└──────────────────────────┘
             ╲│╱
              ○
              │
┌──────────────────────────┐
│ access_agent             │
└──────────────────────────┘
              │
              ○
             ╱│╲
┌──────────────────────────┐
│ access_assignment        │
└──────────────────────────┘
             ╲│╱
              ○
              │
┌──────────────────────────┐
│ access_attribute         │
└──────────────────────────┘
              │
              ○
             ╱│╲
┌──────────────────────────┐
│ access_permission        │
└──────────────────────────┘
             ╲│╱
              ○
              │
┌──────────────────────────┐
│ access_operation         │
└──────────────────────────┘
```

