-- Buchungen nach Hoteltyp
SELECT hotel, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY hotel
ORDER BY total_bookings DESC;

-- Buchungen pro Monat
SELECT arrival_date_month, COUNT(*) AS bookings_per_month
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY bookings_per_month DESC;

-- Top 10 Herkunftsländer
SELECT country, COUNT(*) AS guests
FROM hotel_bookings
GROUP BY country
ORDER BY guests DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Aufenthaltsdauer im Durchschnitt
SELECT hotel, AVG(stays_in_weekend_nights + stays_in_week_nights) AS avg_total_nights
FROM hotel_bookings
GROUP BY hotel
ORDER BY avg_total_nights DESC;

-- Durchschnittlicher Zimmerpreis pro Hotel
SELECT hotel, ROUND(AVG(adr), 2) AS avg_adr
FROM hotel_bookings
GROUP BY hotel
ORDER BY avg_adr DESC;

-- Durchschnittliche Aufenthaltsdauer nach Land
SELECT country, ROUND(AVG(stays_in_weekend_nights + stays_in_week_nights), 2) AS avg_total_nights
FROM hotel_bookings
GROUP BY country
HAVING COUNT(*) > 100
ORDER BY avg_total_nights DESC;

-- Gruppenbuchungsgrößen
SELECT (adults + children + babies) AS group_size, COUNT(*) AS bookings
FROM hotel_bookings
GROUP BY (adults + children + babies)
ORDER BY group_size;
