# User story to domain model:

| Objects | Messages            |
| ------- | ---------           |
| Person  | Verified            | 
| Bike    | Working & good      |
| Customer| Paid                |
| Docking Station| Release  |

# Object Communication:

Bike <--Working--> true/false DockingStation <--ReleaseABike--> A Bike Customer <--Person--> Person
