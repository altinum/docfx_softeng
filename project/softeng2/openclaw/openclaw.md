

# Access a DV via OpelClaw

## Step 1 — install prerequisites

### install jq

`jq` is a lightweight command-line tool for parsing, filtering, and transforming JSON data. Think of it as `grep`/`sed` but specifically designed for JSON.

When you run a `curl` request to a REST API, you get back raw JSON — often a big blob that's hard to read. `jq` lets you slice and reshape that output instantly.

It's pre-installed on most Linux/macOS systems, or installable in one line:

- macOS: `brew install jq`
- Ubuntu/Debian: `sudo apt install jq`
- Windows: `winget install jqlang.jq`



## Step 2 — Set up API endpoints

This time we will use a sample API service at

https://northwind.vercel.app/

#### Example

- `GET northwind.now.sh/api/categories `Get all categories
- `GET northwind.now.sh/api/categories/1 `Get a category by Id 1
- `POST northwind.now.sh/api/categories `Adds a new category
- `PUT northwind.now.sh/api/categories `Edit a category
- `DELETE northwind.now.sh/api/categories/1 `Delete a category with Id 1

## Step 3 — Create the Northwind skill

Create the directory and file:

bash

```bash
mkdir -p ~/.openclaw/workspace/skills/northwind-db
```

Then create `~/.openclaw/workspace/skills/northwind-db/SKILL.md`:

markdown

~~~markdown
---
name: northwind-db
description: >
  Query the Northwind database via REST API. Use for questions about
  customers, orders, products, employees, suppliers, or sales data.
requires:
  bins:
    - curl
    - jq
---

# Northwind Database Skill

You have access to the Northwind sales database via REST API.
Base URL: https://northwind.vercel.app/api

## Available Endpoints

| Resource      | Endpoint                        | Description                        |
|---------------|---------------------------------|------------------------------------|
| Customers     | GET /customers                  | List all customers                 |
| Customer      | GET /customers/:id              | Single customer by ID              |
| Orders        | GET /orders                     | List all orders                    |
| Order detail  | GET /orders/:id                 | Single order with line items       |
| Products      | GET /products                   | List all products                  |
| Product       | GET /products/:id               | Single product                     |
| Categories    | GET /categories                 | Product categories                 |
| Employees     | GET /employees                  | List all employees                 |
| Suppliers     | GET /suppliers                  | List all suppliers                 |

## How to Query

Use curl to fetch data and jq to format/filter the JSON response.

### Examples

**List all customers:**
```bash
curl -s "$NORTHWIND_BASE_URL/customers" | jq '[.[] | {id, companyName, country}]'
```

**Find orders for a specific customer (e.g. ALFKI):**
```bash
curl -s "$NORTHWIND_BASE_URL/orders" | jq '[.[] | select(.customerId == "ALFKI")]'
```

**Top 5 most expensive products:**
```bash
curl -s "$NORTHWIND_BASE_URL/products" \
  | jq '[.[] | {productName, unitPrice}] | sort_by(-.unitPrice) | .[0:5]'
```

**Products low on stock (reorderLevel > unitsInStock):**
```bash
curl -s "$NORTHWIND_BASE_URL/products" \
  | jq '[.[] | select(.unitsInStock <= .reorderLevel) | {productName, unitsInStock, reorderLevel}]'
```

**Orders in a date range:**
```bash
curl -s "$NORTHWIND_BASE_URL/orders" \
  | jq '[.[] | select(.orderDate >= "1997-01-01" and .orderDate <= "1997-12-31")]'
```

## Rules
- Always use `jq` to filter and shape the response before presenting data.
- If the user asks a question, translate it to the right endpoint + jq filter.
- Present results as a clean table or summary, not raw JSON.
- If a query returns 0 results, tell the user and suggest alternatives.
- Never expose $NORTHWIND_BASE_URL directly in your reply.
~~~

