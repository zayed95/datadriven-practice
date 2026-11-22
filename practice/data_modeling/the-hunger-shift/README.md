# The Hunger Shift

*What's everyone eating? The answer changes hourly.*

[Data Modeling · Medium · on DataDriven](https://datadriven.io/problems/the_hunger_shift)

## How it went

| | |
|---|---|
| Solved | 2026-11-22 |
| Accepted | on the first submission |
| Hints | none |
| Concepts | Data Types, Denormalization, Dimension Tables, Fact Tables, Foreign Keys, Grain Definition, One-to-Many, Pre-Aggregation, Primary Keys, Star Schema, Surrogate Keys |

## The design

```mermaid
erDiagram
    orders {
        INT order_id PK
        TIMESTAMP order_date
        VARCHAR city
    }
    dishes {
        INT dish_id PK
        VARCHAR dish_name
    }
    order_dish {
        INT dish_id PK
        INT order_id PK
    }
    dishes only one to zero or more order_dish : "dish_id"
    orders only one to zero or more order_dish : "order_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.
