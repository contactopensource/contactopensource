# access package

For attribute-based access control (ABAC).

Contains:

* [access_tenant](../access_tenant/)

* [access_occupant](../access_occupant/)

* [access_user](../access_user/)

* [access_assignment](../access_assignment/)

* [access_attribute](../access_attribute/)

* [access_permission](../access_permission/)

* [access_operation](../access_operation/)


## Diagram

```monodraw
┌──────────────────────────┐
│ access_tenant            │
└──────────────────────────┘
              │             
              ○             
             ╱│╲            
┌──────────────────────────┐
│ access_occupant          │
└──────────────────────────┘
             ╲│╱            
              ○             
              │             
┌──────────────────────────┐
│ access_user              │
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