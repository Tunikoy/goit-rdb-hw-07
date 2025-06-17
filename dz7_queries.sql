-- p1: Витяг року, місяця і дня з атрибута date
SELECT
    id,
    date,
    YEAR(STR_TO_DATE(date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(date, '%Y-%m-%d')) AS month,
    DAY(STR_TO_DATE(date, '%Y-%m-%d')) AS day
FROM orders;

-- p2: Додавання одного дня до дати
SELECT
    id,
    date,
    DATE_ADD(STR_TO_DATE(date, '%Y-%m-%d'), INTERVAL 1 DAY) AS next_day
FROM orders;

-- p3: Отримання timestamp з дати
SELECT
    id,
    date,
    UNIX_TIMESTAMP(STR_TO_DATE(date, '%Y-%m-%d')) AS timestamp
FROM orders;

-- p4: Кількість рядків з датою в діапазоні
SELECT
    COUNT(*) AS count_in_range
FROM orders
WHERE STR_TO_DATE(date, '%Y-%m-%d') BETWEEN '1996-07-10' AND '1996-10-08';

-- p5: Вивід JSON-обʼєкта з id і date
SELECT
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_data
FROM orders;
