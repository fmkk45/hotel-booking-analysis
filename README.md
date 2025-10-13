# 🏨 Hotel Booking Analysis – SQL & Power BI Projekt

Dieses Projekt untersucht weltweite Hotelbuchungen, um Einblicke in das Kundenverhalten, Buchungstrends, Stornierungen und Preisentwicklungen zu gewinnen.  
Die Daten stammen aus **Kaggle** und wurden in **SQL Server (SSMS)** bereinigt und anschließend in **Power BI** visualisiert.

Link zum Projekt : https://app.powerbi.com/links/rJ6W4v4XOG?ctid=e5b7d5ce-b809-4e0a-af5d-3ffc60108b16&pbi_source=linkShare

---

## 🎯 Projektziel

Ziel war es, ein End-to-End-Datenanalyseprojekt zu erstellen, das zeigt, wie aus Rohdaten handlungsrelevante Business Insights gewonnen werden.  
Dabei wurde der gesamte Prozess durchlaufen:
1. Datenimport aus **Kaggle**
2. Bereinigung & Aufbereitung in **SQL Server**
3. Visualisierung & Storytelling in **Power BI**

---


## 🔧 Verwendete Technologien

| Kategorie | Tools |
|------------|-------|
| Datenquelle | Kaggle Dataset ([Hotel Booking Demand](https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand)) |
| Microsoft Excel / CSV | Vorprüfung der Daten |
| Datenbank | Microsoft SQL Server (SSMS) |
| Abfragen | T-SQL |
| Visualisierung | Power BI |
| Datenaufbereitung | SQL Joins, Aggregationen, CAST/CONVERT, CASE-Statements |
| Versionierung | GitHub |

---



## 🧹 Datenbereinigung (SQL)

In SQL Server Management Studio (SSMS) wurden die Rohdaten bereinigt und vereinheitlicht:

- Fehlende Werte (`NULL`) ersetzt durch Standardwerte ( `'No Agent'`)
- Datentypen angepasst (`INT`, `FLOAT`, `NVARCHAR`)
- Nicht benötigte Spalten entfernt
- Durchschnittswerte und Stornierungsraten berechnet
- Beispielhafte Abfragen:
  - Durchschnittlicher Zimmerpreis (`AVG(adr)`)
  - Stornierungsrate pro Land, Monat und Hoteltyp
  - Gesamtanzahl Buchungen nach Buchungskanal
  - Aufenthaltsdauer & Gästeverteilung (Erwachsene, Kinder, Babys)

---

## 📊 Dashboard-Übersicht

Das Power BI Dashboard besteht aus **zwei Seiten** mit über **15 Diagrammen** und **5 KPIs**.

---

### 📄 Seite 1 – Überblick & KPIs

**KPIs:**
- Average ADR (Average Daily Rate): 101,83 €

- Average Stay (Durchschnittliche Aufenthaltsdauer): 3,43 Nächte

- Cancel Rate (%): 37,04 %

- Direct Bookings: 16 Tsd.

- Total Bookings: 119 Tsd.
  
**Visualisierungen:**
- Total Bookings nach Monat
→ Zeigt saisonale Buchungsschwankungen.

- Top 10 Buchungsländer
→ Portugal, UK und Frankreich dominieren.

- Buchungen nach Kundentyp
→ Transient-Kunden bilden die Mehrheit.

- Cancel Rate (%) nach Hoteltyp
→ City Hotel hat höhere Stornierungsquote.

- Average ADR nach Zimmerart
→ Zimmer H, G und F sind am teuersten.

- Anzahl Buchungen nach Aufenthaltsart
→ Wochenendaufenthalte sind beliebter als Wochentage.

---

### 📄 Seite 2 – Vertiefte Analyse

**Visualisierungen:**
- Stornierungsrate nach Monat
→ Höchste Raten im Frühling (April–June).

- Top 10 Länder mit Stornierungen
→ Portugal (PRT) hat die meisten Stornierungen.

- Direct Bookings vs. Agent Bookings (Kreisdiagramm)
→ 86 % der Buchungen über Agenturen.

- Durchschnittliche Aufenthaltsdauer nach Land
→ Länder wie FRO und SEN haben längere Aufenthalte.

- ADR nach Monat
→ Höchster Preis im August.

- Buchungen pro Zimmerart
→ Zimmer A ist am häufigsten gebucht.

- Stornierungsrate nach Kundentyp
→ Transient-Gäste stornieren am häufigsten.

- Stornierungsrate nach Land
→ Länder mit hoher Stornoquote identifiziert.

- Buchungen nach Gruppengröße
→ Gruppen mit 2 Personen am häufigsten.
---

## 📈 Wichtige Erkenntnisse

- **City Hotels** verzeichnen die höchste Buchungszahl, aber auch die höchste Stornierungsquote.  
- **August** ist der umsatzstärkste Monat mit den höchsten Durchschnittspreisen.  
- **86 % aller Buchungen** werden über Agenturen abgewickelt.  
- Die meisten Buchungen stammen aus **Portugal**, **UK** und **Frankreich**.  
- Typische Buchungen erfolgen für **zwei Erwachsene** (Familienreisen sind seltener).  

---

## 🧠 Learnings

- Umgang mit realen, unbereinigten Datensätzen

- Datenbereinigung in SQL und DAX

- Erstellen aussagekräftiger Dashboards in Power BI

- Interpretation von Buchungs- und Stornierungsverhalten

---

## 👨‍💻 Autor

**Fabrice Martial Kamwameugne Kuokam**  
_Student in Informatik_  
💼 Kenntnisse: SQL, Power BI, Tableau, Python, Data Cleaning, Data Modeling  
