# Doctor-Winter

A Winter Illness Diagnosis Expert System
# Description:

Doctor Winter is a Prolog-based expert system designed to assist users in identifying common winter illnesses based on input symptoms, age, allergies, and current medications. The system employs a database of symptoms, associated illnesses, and recommended medications to provide accurate diagnoses.
# Features:

Symptom-Based Diagnosis: Users input their symptoms to receive accurate illness identification.
Consideration of Personal Factors: Age, allergies, and current medications are taken into account for tailored diagnosis recommendations.
Specific Medication Suggestions: Doctor Winter offers precise medication suggestions for diagnosed illnesses.
# Overview 

This program calculates public transport routes between stations based on predefined schedules and stops.
# Prerequisites

•	Prolog installed on your system. Download Prolog
# Running the Program 

Clone the Repository:
git clone https://github.com/DAVIDS4A/Doctor-Winter.git
Navigate to the Directory
cd public-transport-route-calculator
Launch Prolog
swipl
Load the Program
In the Prolog console, load the main file:
[main_file_name]. % Replace 'main_file_name' with the actual name of the Prolog file
Run the Program: Once the file is loaded, execute the start_diagnosis/0 predicate:
start_diagnosis.
Follow On-Screen Instructions:
•	Enter Illness Symptoms.
•	Enter your Age.
•	Enter your Allergies or “none.” If you have none.
•	Enter any medication you are currently taking or “none.” If there’s none .
Exiting the Program:
•	To exit the Prolog console, type halt. or use the appropriate exit command for your system.
NOTE:
•	Ensure that the symptoms match the station names listed in the program's data.
•	If no illness is found, the program will display a corresponding message.
Example Query: Here are some sample queries you can try in the Prolog console:
?- start_diagnosis.
Enter patient symptoms separated by commas: 
|: [fever,severecough,bodyaches,fatigue,respiratorysymptoms].
Enter patient age: 
|: 23.
Enter any allergies (or none): 
|: none.
Enter current medications (or none): 
|: [anticoagulants].
Consult a doctor due to anticoagulants or asthma medication interactions.
Diagnosis: flu
Medication: [antivirals,painrelief,fluidsrest]
THANK YOU FOR USING DR. WINTER.
true.
?-
Contributing Contributions are welcome! Fork the repository, make changes, and submit a pull request.
License This project is licensed under the MIT License.


