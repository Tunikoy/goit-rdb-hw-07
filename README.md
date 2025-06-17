# ДЗ 7 — Робота з часом і JSON у SQL

## Репозиторій: `goit-rdb-hw-07`

## Опис
У цьому домашньому завданні я реалізував 5 SQL-запитів на основі таблиці `orders`, використовуючи функції роботи з датою та JSON.

---

### 📌 p1: Витяг року, місяця і дня з `date`
```sql
SELECT
    id,
    date,
    YEAR(STR_TO_DATE(date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(date, '%Y-%m-%d')) AS month,
    DAY(STR_TO_DATE(date, '%Y-%m-%d')) AS day
FROM orders;
