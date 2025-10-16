# SQL naming conventions

```sql
-- Primary Keys
{table}_pk
users_pkey, products_pk

-- Foreign Keys
{table}_{column}_fk
orders_user_id_fk, line_items_product_id_fk

-- Unique Constraints
{table}_{column(s)}_unique
users_email_unique, products_sku_unique

-- Check Constraints
{table}_{column}_{description}_check
users_age_positive_check, orders_quantity_min_check

-- Multi-column constraints
{table}_{col1}_{col2}_unique
user_roles_user_id_role_id_unique
```

## In Practice (Ash/Ecto)

```elixir
create unique_index(:users, [:email], 
  name: :users_email_index)

create constraint(:users, :users_age_positive_check, 
  check: "age > 0")

alter table(:orders) do
  add :user_id, references(:users, on_delete: :delete_all),
    name: :orders_user_id_fk
end
```

## Constraint names

PostgreSQL allows duplicate constraint names across tables. However, we prefer using globally unique names because these are easier when debugging, reading logs, and maintaining the database. It's a small upfront effort that pays dividends in clarity.

### Error Messages Are Clearer

```sql
-- Good: naming shows the issue is with the users table
ERROR:  duplicate key value violates unique constraint "users_email_unique"
DETAIL:  Key (email)=(test@example.com) already exists.

-- Poor: which table? users? customers? admins?
ERROR:  duplicate key value violates unique constraint "unique_email"
DETAIL:  Key (email)=(test@example.com) already exists.
```

### Debugging and Logging are Easier

```elixir
# In your application logs
[error] Constraint violation: "users_email_unique"  # Clear!
[error] Constraint violation: "email_check"         # Which table?
```
