-- SQL-Datenbereinigung für Hotelbuchungsdaten (Projekt: Reisen & Hotelanalyse)
-- Autor: Fabrice Martial KAMWAMEUGNE Kuokam
-- Erstellt am: 10.10.2025





-- 1. NULL-Werte ersetzen

-- lead_time mit 0 ersetzen
UPDATE hotel_bookings
SET lead_time = 0
WHERE lead_time IS NULL;

-- adults mit 1 ersetzen 
UPDATE hotel_bookings
SET adults = 1
WHERE adults IS NULL;

-- adr mit 0 ersetzen
UPDATE hotel_bookings
SET adr = 0
WHERE adr IS NULL;

-- agent mit 'No Agent' ersetzen
UPDATE hotel_bookings
SET agent = 'No Agent'
WHERE agent IS NULL;

-- company mit 'No Company' ersetzen
UPDATE hotel_bookings
SET company = 'No Company'
WHERE company IS NULL;

-- children mit 0 ersetzen
UPDATE hotel_bookings
SET children = 0
WHERE children IS NULL;


-- 2. Datentypen anpassen (NOT NULL setzen)

ALTER TABLE hotel_bookings ALTER COLUMN lead_time INT NOT NULL;
ALTER TABLE hotel_bookings ALTER COLUMN adults INT NOT NULL;
ALTER TABLE hotel_bookings ALTER COLUMN adr FLOAT NOT NULL;
ALTER TABLE hotel_bookings ALTER COLUMN agent NVARCHAR(255) NOT NULL;
ALTER TABLE hotel_bookings ALTER COLUMN company NVARCHAR(255) NOT NULL;
ALTER TABLE hotel_bookings ALTER COLUMN children INT NOT NULL;

--  Überprüfung: Anzahl verbleibender NULL-Werte
SELECT 
  SUM(CASE WHEN lead_time IS NULL THEN 1 ELSE 0 END) AS Null_LeadTime,
  SUM(CASE WHEN adults IS NULL THEN 1 ELSE 0 END) AS Null_Adults,
  SUM(CASE WHEN adr IS NULL THEN 1 ELSE 0 END) AS Null_ADR,
  SUM(CASE WHEN agent IS NULL THEN 1 ELSE 0 END) AS Null_Agent,
  SUM(CASE WHEN company IS NULL THEN 1 ELSE 0 END) AS Null_Company,
  SUM(CASE WHEN children IS NULL THEN 1 ELSE 0 END) AS Null_Children
FROM hotel_bookings;
