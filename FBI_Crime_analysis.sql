CREATE DATABASE crime_data;
USE crime_data;

-- disable safe update mode (which will allow to run the code without WHERE clause)
SET SQL_SAFE_UPDATES = 0;

UPDATE Crimes_Against_Persons_Offenses_2023
SET 
    number_of_participating_agencies = CAST(REPLACE(number_of_participating_agencies, ',', '') AS UNSIGNED),
    population_covered = CAST(REPLACE(population_covered, ',', '') AS UNSIGNED),
    total_offenses = CAST(REPLACE(total_offenses, ',', '') AS UNSIGNED),
    assault_offenses = CAST(REPLACE(assault_offenses, ',', '') AS UNSIGNED),
    homicide_offenses = CAST(REPLACE(homicide_offenses, ',', '') AS UNSIGNED),
    human_trafficking_offenses = CAST(REPLACE(human_trafficking_offenses, ',', '') AS UNSIGNED),
    kidnapping_abduction = CAST(REPLACE(kidnapping_abduction, ',', '') AS UNSIGNED),
    sex_offenses = CAST(REPLACE(sex_offenses, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Persons_Offenses_2023 
MODIFY COLUMN number_of_participating_agencies INT,
MODIFY COLUMN population_covered INT,
MODIFY COLUMN total_offenses INT,
MODIFY COLUMN assault_offenses INT,
MODIFY COLUMN homicide_offenses INT,
MODIFY COLUMN human_trafficking_offenses INT,
MODIFY COLUMN kidnapping_abduction INT,
MODIFY COLUMN sex_offenses INT;


SELECT * FROM Crimes_Against_Persons_Offenses_2023;


UPDATE Crimes_Against_Property_Offenses_2023
SET 
    number_of_participating_agencies = CAST(REPLACE(number_of_participating_agencies, ',', '') AS UNSIGNED),
    population_covered = CAST(REPLACE(population_covered, ',', '') AS UNSIGNED),
    total_offenses = CAST(REPLACE(total_offenses, ',', '') AS UNSIGNED),
    arson = CAST(REPLACE(arson, ',', '') AS UNSIGNED),
    bribery = CAST(REPLACE(bribery, ',', '') AS UNSIGNED),
    burglary_breaking_entering = CAST(REPLACE(burglary_breaking_entering, ',', '') AS UNSIGNED),
    counterfeiting_forgery = CAST(REPLACE(counterfeiting_forgery, ',', '') AS UNSIGNED),
    destruction_damage_vandalism = CAST(REPLACE(destruction_damage_vandalism, ',', '') AS UNSIGNED),
    embezzlement = CAST(REPLACE(embezzlement, ',', '') AS UNSIGNED),
    extortion_blackmail = CAST(REPLACE(extortion_blackmail, ',', '') AS UNSIGNED),
    fraud_offenses = CAST(REPLACE(fraud_offenses, ',', '') AS UNSIGNED),
    larceny_theft_offenses = CAST(REPLACE(larceny_theft_offenses, ',', '') AS UNSIGNED),
    motor_vehicle_theft = CAST(REPLACE(motor_vehicle_theft, ',', '') AS UNSIGNED),
    robbery = CAST(REPLACE(robbery, ',', '') AS UNSIGNED),
    stolen_property_offenses = CAST(REPLACE(stolen_property_offenses, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Property_Offenses_2023 
MODIFY COLUMN number_of_participating_agencies INT,
MODIFY COLUMN population_covered INT,
MODIFY COLUMN total_offenses INT,
MODIFY COLUMN arson INT,
MODIFY COLUMN bribery INT,
MODIFY COLUMN burglary_breaking_entering INT,
MODIFY COLUMN counterfeiting_forgery INT,
MODIFY COLUMN destruction_damage_vandalism INT,
MODIFY COLUMN embezzlement INT,
MODIFY COLUMN extortion_blackmail INT,
MODIFY COLUMN fraud_offenses INT,
MODIFY COLUMN larceny_theft_offenses INT,
MODIFY COLUMN motor_vehicle_theft INT,
MODIFY COLUMN robbery INT,
MODIFY COLUMN stolen_property_offenses INT;

SELECT * FROM Crimes_Against_Property_Offenses_2023;

UPDATE Crimes_Against_Society_Offenses_2023
SET 
    number_of_participating_agencies = CAST(REPLACE(number_of_participating_agencies, ',', '') AS UNSIGNED),
    population_covered = CAST(REPLACE(population_covered, ',', '') AS UNSIGNED),
    total_offenses = CAST(REPLACE(total_offenses, ',', '') AS UNSIGNED),
    animal_cruelty = CAST(REPLACE(animal_cruelty, ',', '') AS UNSIGNED),
    drug_narcotic_offenses = CAST(REPLACE(drug_narcotic_offenses, ',', '') AS UNSIGNED),
    gambling_offenses = CAST(REPLACE(gambling_offenses, ',', '') AS UNSIGNED),
    pornography_obscene_material = CAST(REPLACE(pornography_obscene_material, ',', '') AS UNSIGNED),
    prostitution_offenses = CAST(REPLACE(prostitution_offenses, ',', '') AS UNSIGNED),
    weapon_law_violations = CAST(REPLACE(weapon_law_violations, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Society_Offenses_2023
MODIFY COLUMN number_of_participating_agencies INT,
MODIFY COLUMN population_covered INT,
MODIFY COLUMN total_offenses INT,
MODIFY COLUMN animal_cruelty INT,
MODIFY COLUMN drug_narcotic_offenses INT,
MODIFY COLUMN gambling_offenses INT,
MODIFY COLUMN pornography_obscene_material INT,
MODIFY COLUMN prostitution_offenses INT,
MODIFY COLUMN weapon_law_violations INT;

SELECT * FROM Crimes_Against_Society_Offenses_2023;

describe Crimes_Against_Persons_Offenses_2023;


UPDATE Crimes_Against_Society_Incidents_Offense_by_Time_of_Day_2023
SET 
    `Total Incidents` = CAST(REPLACE(`Total Incidents`, ',', '') AS UNSIGNED),
    `Animal Cruelty` = CAST(REPLACE(`Animal Cruelty`, ',', '') AS UNSIGNED),
    `Drug Narcotic Offenses` = CAST(REPLACE(`Drug Narcotic Offenses`, ',', '') AS UNSIGNED),
    `Gambling Offenses` = CAST(REPLACE(`Gambling Offenses`, ',', '') AS UNSIGNED),
    `Pornography Obscene Material` = CAST(REPLACE(`Pornography Obscene Material`, ',', '') AS UNSIGNED),
    `Prostitution Offenses` = CAST(REPLACE(`Prostitution Offenses`, ',', '') AS UNSIGNED),
    `Weapon Law Violations` = CAST(REPLACE(`Weapon Law Violations`, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Society_Incidents_Offense_by_Time_of_Day_2023
MODIFY COLUMN `Total Incidents` INT,
MODIFY COLUMN `Animal Cruelty` INT,
MODIFY COLUMN `Drug Narcotic Offenses` INT,
MODIFY COLUMN `Gambling Offenses` INT,
MODIFY COLUMN `Pornography Obscene Material` INT,
MODIFY COLUMN `Prostitution Offenses` INT,
MODIFY COLUMN `Weapon Law Violations` INT;

describe Crimes_Against_Society_Incidents_Offense_by_Time_of_Day_2023;





UPDATE Crimes_Against_Property_Incidents_Offense_by_Time_of_Day_2023
SET 
    `Total Incidents` = CAST(REPLACE(`Total Incidents`, ',', '') AS UNSIGNED),
    `Arson` = CAST(REPLACE(`Arson`, ',', '') AS UNSIGNED),
    `Bribery` = CAST(REPLACE(`Bribery`, ',', '') AS UNSIGNED),
    `Burglary Breaking and Entering` = CAST(REPLACE(`Burglary Breaking and Entering`, ',', '') AS UNSIGNED),
    `Counterfeiting Forgery` = CAST(REPLACE(`Counterfeiting Forgery`, ',', '') AS UNSIGNED),
    `Destruction Damage Vandalism` = CAST(REPLACE(`Destruction Damage Vandalism`, ',', '') AS UNSIGNED),
    `Embezzlement` = CAST(REPLACE(`Embezzlement`, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Property_Incidents_Offense_by_Time_of_Day_2023
MODIFY COLUMN `Total Incidents` INT,
MODIFY COLUMN `Arson` INT,
MODIFY COLUMN `Bribery` INT,
MODIFY COLUMN `Burglary Breaking and Entering` INT,
MODIFY COLUMN `Counterfeiting Forgery` INT,
MODIFY COLUMN `Destruction Damage Vandalism` INT,
MODIFY COLUMN `Embezzlement` INT;



UPDATE Crimes_Against_Persons_Incidents_Offense_by_Time_of_Day_2023
SET 
    `Total Incidents` = CAST(REPLACE(`Total Incidents`, ',', '') AS UNSIGNED),
    `Assault Offenses` = CAST(REPLACE(`Assault Offenses`, ',', '') AS UNSIGNED),
    `Homicide Offenses` = CAST(REPLACE(`Homicide Offenses`, ',', '') AS UNSIGNED),
    `Human Trafficking Offenses` = CAST(REPLACE(`Human Trafficking Offenses`, ',', '') AS UNSIGNED),
    `Kidnapping Abduction` = CAST(REPLACE(`Kidnapping Abduction`, ',', '') AS UNSIGNED),
    `Sex Offenses` = CAST(REPLACE(`Sex Offenses`, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Persons_Incidents_Offense_by_Time_of_Day_2023
MODIFY COLUMN `Total Incidents` INT,
MODIFY COLUMN `Assault Offenses` INT,
MODIFY COLUMN `Homicide Offenses` INT,
MODIFY COLUMN `Human Trafficking Offenses` INT,
MODIFY COLUMN `Kidnapping Abduction` INT,
MODIFY COLUMN `Sex Offenses` INT;



UPDATE Crimes_Against_Society_Offenses_by_Location_2023
SET 
    `Total Offenses` = CAST(REPLACE(`Total Offenses`, ',', '') AS UNSIGNED),
    `Animal Cruelty` = CAST(REPLACE(`Animal Cruelty`, ',', '') AS UNSIGNED),
    `Drug Narcotic Offenses` = CAST(REPLACE(`Drug Narcotic Offenses`, ',', '') AS UNSIGNED),
    `Gambling Offenses` = CAST(REPLACE(`Gambling Offenses`, ',', '') AS UNSIGNED),
    `Pornography Obscene Material` = CAST(REPLACE(`Pornography Obscene Material`, ',', '') AS UNSIGNED),
    `Prostitution Offenses` = CAST(REPLACE(`Prostitution Offenses`, ',', '') AS UNSIGNED),
    `Weapon LawnViolations` = CAST(REPLACE(`Weapon LawnViolations`, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Society_Offenses_by_Location_2023
MODIFY COLUMN `Total Offenses` INT,
MODIFY COLUMN `Animal Cruelty` INT,
MODIFY COLUMN `Drug Narcotic Offenses` INT,
MODIFY COLUMN `Gambling Offenses` INT,
MODIFY COLUMN `Pornography Obscene Material` INT,
MODIFY COLUMN `Prostitution Offenses` INT,
MODIFY COLUMN `Weapon LawnViolations` INT;


UPDATE Crimes_Against_Persons_Offenses_Location_2023
SET 
    `Total Offenses` = CAST(REPLACE(`Total Offenses`, ',', '') AS UNSIGNED),
    `Assault Offenses` = CAST(REPLACE(`Assault Offenses`, ',', '') AS UNSIGNED),
    `Homicide Offenses` = CAST(REPLACE(`Homicide Offenses`, ',', '') AS UNSIGNED),
    `Human Trafficking Offenses` = CAST(REPLACE(`Human Trafficking Offenses`, ',', '') AS UNSIGNED),
    `Kidnapping Abduction` = CAST(REPLACE(`Kidnapping Abduction`, ',', '') AS UNSIGNED),
    `Sex Offenses` = CAST(REPLACE(`Sex Offenses`, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Persons_Offenses_Location_2023
MODIFY COLUMN `Total Offenses` INT,
MODIFY COLUMN `Assault Offenses` INT,
MODIFY COLUMN `Homicide Offenses` INT,
MODIFY COLUMN `Human Trafficking Offenses` INT,
MODIFY COLUMN `Kidnapping Abduction` INT,
MODIFY COLUMN `Sex Offenses` INT;

UPDATE Crimes_Against_Property_Offenses_Offense_by_Location_2023
SET 
    `Total Offenses` = CAST(REPLACE(`Total Offenses`, ',', '') AS UNSIGNED),
    `Arson` = CAST(REPLACE(`Arson`, ',', '') AS UNSIGNED),
    `Bribery` = CAST(REPLACE(`Bribery`, ',', '') AS UNSIGNED),
    `Burglary Breaking and Entering` = CAST(REPLACE(`Burglary Breaking and Entering`, ',', '') AS UNSIGNED),
    `Counterfeiting Forgery` = CAST(REPLACE(`Counterfeiting Forgery`, ',', '') AS UNSIGNED),
    `Destruction Damage Vandalism` = CAST(REPLACE(`Destruction Damage Vandalism`, ',', '') AS UNSIGNED),
    `Embezzlement` = CAST(REPLACE(`Embezzlement`, ',', '') AS UNSIGNED),
    `Extortion Blackmail` = CAST(REPLACE(`Extortion Blackmail`, ',', '') AS UNSIGNED),
    `Fraud Offenses` = CAST(REPLACE(`Fraud Offenses`, ',', '') AS UNSIGNED),
    `Larceny Theft Offenses` = CAST(REPLACE(`Larceny Theft Offenses`, ',', '') AS UNSIGNED),
    `Motor Vehicle Theft` = CAST(REPLACE(`Motor Vehicle Theft`, ',', '') AS UNSIGNED),
    `Robbery` = CAST(REPLACE(`Robbery`, ',', '') AS UNSIGNED),
    `Stolen Property Offenses` = CAST(REPLACE(`Stolen Property Offenses`, ',', '') AS UNSIGNED);

ALTER TABLE Crimes_Against_Property_Offenses_Offense_by_Location_2023
MODIFY COLUMN `Total Offenses` INT,
MODIFY COLUMN `Arson` INT,
MODIFY COLUMN `Bribery` INT,
MODIFY COLUMN `Burglary Breaking and Entering` INT,
MODIFY COLUMN `Counterfeiting Forgery` INT,
MODIFY COLUMN `Destruction Damage Vandalism` INT,
MODIFY COLUMN `Embezzlement` INT,
MODIFY COLUMN `Extortion Blackmail` INT,
MODIFY COLUMN `Fraud Offenses` INT,
MODIFY COLUMN `Larceny Theft Offenses` INT,
MODIFY COLUMN `Motor Vehicle Theft` INT,
MODIFY COLUMN `Robbery` INT,
MODIFY COLUMN `Stolen Property Offenses` INT;






SET SQL_SAFE_UPDATES = 1;

-- Top 5 most common crimes by total offenses: 

SELECT state, SUM(total_offenses) AS Total_Crimes
FROM  Crimes_Against_Society_Offenses_2023
GROUP BY state
ORDER BY Total_Crimes DESC
LIMIT 5;

-- Top 5 States with the highest number of violent crimes (e.g., assault, homicide):

SELECT state, SUM(assault_offenses + homicide_offenses) AS Violent_Crimes
FROM Crimes_Against_Persons_Offenses_2023
GROUP BY state
ORDER BY Violent_Crimes DESC
LIMIT 5;

-- Crime rate (offenses per 1000 people) by state:

SELECT state, (SUM(total_offenses) / SUM(population_covered)) * 1000 AS Crime_Rate_Per_Thousand
FROM Crimes_Against_Society_Offenses_2023
GROUP BY state
ORDER BY Crime_Rate_Per_Thousand DESC;
 
-- Correlation Analysis
SELECT state, SUM(total_offenses) AS Total_Crime,
			  SUM(number_of_participating_agencies) AS Toatal_Agencies,
              (SUM(total_offenses) / SUM(population_covered)) * 1000 AS Crime_Rate_Per_Thousand
FROM Crimes_Against_Society_Offenses_2023
GROUP BY state
ORDER BY Crime_Rate_Per_Thousand DESC;

-- Pearson Correlation Coefficient
SELECT (n * sum_xy - sum_x * sum_y) / SQRT((n * sum_x_squared - POW(sum_x, 2)) * (n * sum_y_squared - POW(sum_y, 2))) AS correlation_coefficient
FROM (
SELECT SUM(number_of_participating_agencies) AS sum_x,
	    SUM((number_of_participating_agencies * total_offenses) / population_covered) As sum_xy,
        SUM(POW(number_of_participating_agencies, 2)) AS sum_x_squared,
        SUM(POW((total_offenses / population_covered), 2)) AS sum_y_squared,
        COUNT(state) AS n,
        SUM((total_offenses / population_covered)) AS sum_y
FROM Crimes_Against_Society_Offenses_2023
) AS stats;

-- NO significant  Linear Correlation
 




-- Crime Analysis by Location for Crimes Against Society
SELECT c.`Location`, 
       SUM(c.`Total Offenses`) AS Total_Crimes,
       SUM(c.`Animal Cruelty`) AS Animal_Cruelty,
       SUM(c.`Drug Narcotic Offenses`) AS Drug_Offenses,
       SUM(c.`Gambling Offenses`) AS Gambling_Offenses,
       SUM(c.`Weapon LawnViolations`) AS Weapon_Violations
FROM Crimes_Against_Society_Offenses_by_Location_2023 c
GROUP BY c.`Location`
ORDER BY Total_Crimes DESC;

-- Crime Analysis by Time of Day for Crimes Against Society Incidents
SELECT i.`Time of Day`, 
       SUM(i.`Total Incidents`) AS Total_Incidents,
       SUM(i.`Weapon Law Violations`) AS Total_Weapon_Violations
FROM Crimes_Against_Society_Incidents_Offense_by_Time_of_Day_2023 i
GROUP BY i.`Time of Day`
ORDER BY Total_Incidents DESC;


-- Top States with the Highest Violent Crime Rates (Assault and Homicide)
SELECT p.`Location`, 
       SUM(p.`Assault Offenses`) AS Total_Assault, 
       SUM(p.`Homicide Offenses`) AS Total_Homicides,
       SUM(s.`Total Offenses`) AS Total_Offenses,
       (SUM(p.`Assault Offenses`) + SUM(p.`Homicide Offenses`)) / SUM(s.`Total Offenses`) * 100 AS Violent_Crime_Rate
FROM Crimes_Against_Persons_Offenses_Location_2023 p
JOIN Crimes_Against_Society_Offenses_by_Location_2023 s 
    ON p.`Location` = s.`Location`
GROUP BY p.`Location`
ORDER BY Violent_Crime_Rate DESC
LIMIT 5;


-- Correlation Between Crime Rate and Population Covered
SELECT s.`state`, 
       SUM(s.total_offenses) AS Total_Offenses, 
       SUM(s.population_covered) AS Total_Population,
       (SUM(s.total_offenses) / SUM(s.population_covered)) * 1000 AS Crime_Rate_Per_Thousand,
       SUM(p.assault_offenses) + SUM(p.homicide_offenses) AS Violent_Crimes
FROM Crimes_Against_Society_Offenses_2023 s
JOIN Crimes_Against_Persons_Offenses_2023 p 
    ON s.`state` = p.`state`
GROUP BY s.`state`
ORDER BY Crime_Rate_Per_Thousand DESC;


-- Time of Day Crime Trends
SELECT `Time of Day`, 
       SUM(`Total Incidents`) AS Total_Incidents, 
       SUM(`Weapon Law Violations`) AS Total_Weapon_Violations
FROM Crimes_Against_Society_Incidents_Offense_by_Time_of_Day_2023
GROUP BY `Time of Day`
ORDER BY Total_Incidents DESC;



-- Crime Location Patterns:


-- Crime Analysis by Type of Location (Urban vs Rural)
SELECT CASE 
            WHEN `Location` IN ('UrbanArea1', 'UrbanArea2') THEN 'Urban'
            ELSE 'Rural'
        END AS Area_Type,
        SUM(`Total Offenses`) AS Total_Crimes
FROM Crimes_Against_Society_Offenses_by_Location_2023
GROUP BY Area_Type
ORDER BY Total_Crimes DESC;


-- Correlation Between Crime Rate and Population Coverage
SELECT state,
       SUM(total_offenses) AS Total_Offenses,
       SUM(population_covered) AS Total_Population,
       (SUM(total_offenses) / SUM(population_covered)) * 1000 AS Crime_Rate_Per_Thousand
FROM Crimes_Against_Society_Offenses_2023
GROUP BY state
ORDER BY Crime_Rate_Per_Thousand DESC;



 
 