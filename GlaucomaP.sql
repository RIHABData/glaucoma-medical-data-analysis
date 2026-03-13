
create database Glaucoma;

show databases;
SELECT DATABASE();
USE Glaucoma;

SELECT * FROM GlaucomaP LIMIT 5;

/**Q1: Total Number of Patients**/
SELECT COUNT(*) AS total_patients FROM GlaucomaP;

/**Q2:Patients by Gender**/
SELECT Gender, COUNT(*) AS total FROM GlaucomaP GROUP BY Gender;

/**Q3:Average Age of Patients**/
SELECT AVG(Age) AS average_age FROM GlaucomaP;

/**Q4:Glaucoma Diagnosis Distribution**/
SELECT Diagnosis, COUNT(*) AS total FROM GlaucomaP GROUP BY Diagnosis;

/**Q5:Average Intraocular Pressure (IOP)**/
SELECT AVG("Intraocular Pressure (IOP)") AS avg_IOP FROM GlaucomaP;

/**Q6:IOP by Diagnosis**/
SELECT Diagnosis, AVG("Intraocular Pressure (IOP)") AS avg_IOP FROM GlaucomaP GROUP BY Diagnosis;

/**Q7:Patients with Family History of Glaucoma**/
SELECT COUNT(*) AS family_history_cases FROM GlaucomaP WHERE "Family History" = 'Yes';

/**Q8:Glaucoma Type Distribution**/
SELECT "Glaucoma Type", COUNT(*) AS total FROM GlaucomaP GROUP BY "Glaucoma Type";

/**Q9:Patients with High IOP (Risk Factor)**/
SELECT * FROM GlaucomaP WHERE "Intraocular Pressure (IOP)" > 21;

/**Q10: Patients with Cataract**/
SELECT COUNT(*) AS cataract_cases FROM GlaucomaP WHERE "Cataract Status" = 'Yes';

/**Q11:Age Group Analysis**/
SELECT CASE WHEN Age < 40 THEN 'Young' WHEN Age BETWEEN 40 AND 60 
THEN 'Middle Age' ELSE 'Senior' END AS age_group, 
COUNT(*) AS total FROM GlaucomaP GROUP BY age_group;

/**Q12:OCT Results for Glaucoma Patients**/
SELECT "Optical Coherence Tomography (OCT) Results"
FROM GlaucomaP WHERE Diagnosis = 'Glaucoma';







