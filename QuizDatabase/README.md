# Database Setup

This folder contains the SQL scripts required to set up the Quiz App database.

## Files

- **schema.sql** - Creates the database and `question` table.
- **data.sql** - Inserts sample quiz questions into the database.

## Prerequisites

- MySQL Server
- MySQL Workbench (or any MySQL client)

## Steps to Run

### 1. Open MySQL Workbench

Connect to your local MySQL server.

### 2. Execute `schema.sql`

This will create the database and the required table.

```sql
SOURCE schema.sql;
```

### 3. Execute `data.sql`

This will insert all sample quiz questions.

```sql
SOURCE data.sql;
```

### 4. Verify the Data

```sql
USE questiondb;

SELECT * FROM question;
```

If you see 30 records, the database setup is complete.

## Database Schema

| Column | Type |
|---------|------|
| id | INT |
| category | VARCHAR(50) |
| difficultylevel | VARCHAR(20) |
| option1 | VARCHAR(255) |
| option2 | VARCHAR(255) |
| option3 | VARCHAR(255) |
| option4 | VARCHAR(255) |
| question_title | VARCHAR(500) |
| right_answer | VARCHAR(255) |

---
Developed for the **Quiz App** project.