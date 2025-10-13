-- Gesamtstornorate
SELECT ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS cancellation_rate_percent
FROM hotel_bookings;

-- Stornorate pro Hotel
SELECT hotel, ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS cancellation_rate_percent
FROM hotel_bookings
GROUP BY hotel
ORDER BY cancellation_rate_percent DESC;

-- TOP 10 Länder mit höchster Stornorate (nur >100 Buchungen)
SELECT TOP 10 country, COUNT(*) AS total_bookings, 
  SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS total_cancellations,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS cancellation_rate_percent
FROM hotel_bookings
GROUP BY country
HAVING COUNT(*) > 100
ORDER BY cancellation_rate_percent DESC;

-- Monatsabhängige Stornorate
SELECT arrival_date_month, COUNT(*) AS total_bookings,
  SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS total_cancellations,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS cancellation_rate_percent
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY cancellation_rate_percent DESC;

-- Durchschnittlicher ADR pro Monat
SELECT arrival_date_month, ROUND(AVG(adr), 2) AS avg_adr
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY 
  CASE arrival_date_month
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'August' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
  END;

-- Buchungskanal: Agent oder direkt
SELECT 
  CASE 
    WHEN agent = 'No Agent' THEN 'Direct Booking'
    ELSE 'Via Agent'
  END AS booking_channel,
  COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY 
  CASE 
    WHEN agent = 'No Agent' THEN 'Direct Booking'
    ELSE 'Via Agent'
  END;
