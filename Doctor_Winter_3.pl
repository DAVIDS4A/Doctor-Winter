:- discontiguous symptom/2.
:- discontiguous medication/2.

% Facts about illnesses, symptoms, and medications (Database)
symptom(commoncold, [runnynose, stuffynose, sorethroat, cough, mildfever]).
medication(commoncold, [acetaminophen, ibuprofen, decongestants]).

symptom(flu, [fever, severecough, bodyaches, fatigue, respiratorysymptoms]).
medication(flu, [antivirals, painrelief, fluidsrest]).

symptom(covid19, [fever, cough, fatigue, lossoftastesmell, shortnessofbreath]).
medication(covid19, [symptomatictreatment, oxygentherapy, antivirals]).

symptom(pneumonia, [highfever, severecough, chestpain, difficultybreathing]).
medication(pneumonia, [antibiotics, coughsuppressants, painrelief]).

symptom(asthma_exacerbation, [wheezing, shortness_of_breath, chest_tightness, coughing]).
medication(asthma_exacerbation, [bronchodilators, corticosteroids]).

symptom(bronchitis, [cough_with_or_without_mucus, fatigue, shortness_of_breath, chest_discomfort]).
medication(bronchitis, [anti_bacterial, cough_medicine, rest]).

symptom(allergic_rhinitis, [runny_nose, sneezing, congestion, itchy_or_watery_eyes]).
medication(allergic_rhinitis, [antihistamines, decongestants]).

symptom(urinary_tract_infection, [frequent_or_urgent_urination, burning_sensation_while_urinating, cloudy_or_strong_smelling_urine]).
medication(urinary_tract_infection, [trimethoprim_sulfamethoxazole, nitrofurantoin]).

symptom(hypothermia, [shivering, slurred_speech, shallow_breathing, weak_pulse]).
medication(hypothermia, [gradual_rewarming, warm_beverages, warm_blankets]).

symptom(seasonal_depression, [persistent_low_mood, loss_of_interest, changes_of_appetite_or_sleep, fatigue]).
medication(seasonal_depression, [adopt_healthy_diet, do_physical_excercise, monitor_your_blood_sugar_levels]).

symptom(enlarged_prostate_bph, [frequent_or_urgent_urination_especially_at_night, difficulty_starting_urination, weak_urine_stream, inability_to_completely_empty_bladder, urinary_retention]).
medication(enlarged_prostate_bph, [alpha_blockers, five_alpha_reductase_inhibitors, combination_of_the_two]).

symptom(tuberculosis, [persistent_cough, chest_pain, weight_loss, fatigue, fever, night_sweats, chills, loss_of_appetite]).
medication(tuberculosis, [antibiotics, isoniazid, rifampin]).

symptom(whooping_cough, [severe_cough, runny_nose, nasal_congestion, red_watery_eyes, fever]).
medication(whooping_cough, [antibiotics, cough_suppressants]).

symptom(legionnaires_disease, [high_fever, chills, cough, muscle_aches, headache, fatigue]).
medication(legionnaires_disease, [antibiotics]).

% Rules for diagnosis and medication suggestion
diagnosis(Illness, Symptoms, Medication, Age, Allergies, CurrentMeds) :-
    symptom(Illness, IllnessSymptoms),
    subset(Symptoms, IllnessSymptoms),
    check_additional_factors(Illness, Age, Allergies, CurrentMeds),
    medication(Illness, Medication).

% Checks for additional factors that might influence diagnosis like
% allergies and current medications
check_additional_factors(Illness, Age, Allergies, CurrentMeds) :-
    % Age restrictions.
    (Illness = flu, Age >= 65 ->
        write('Consider flu vaccine.'), nl
    ;   true),
    (Illness = flu, Age < 18 ->
        write('The available medication is intended for older individuals, please consult a Pediatrician before use.'), nl
    ;   true),
    (Illness = urinary_tract_infection, Age < 18 ->
        write('Consult Pediatrician.'), nl
    ;   true),
    (Illness = enlarged_prostate_bph, Age < 18 ->
        write('The available medication is intended for older individuals, please consult a Pediatrician before.'), nl
    ;   true),

    % Allergy-related considerations
    (member(allergy_to_penicillin, Allergies), Illness = pneumonia ->
        write('Avoid penicillin-based antibiotics.'), nl
    ;   true),
    (member(allergy_to_sulfa, Allergies), Illness = urinary_tract_infection ->
        write('Avoid sulfa drugs and consult a doctor'), nl
    ;   true),

    % Restrictions on Medication
    (intersection([anticoagulants, asthma_medication], CurrentMeds), (Illness = commoncold ; Illness = flu) ->
        write('Consult a doctor due to anticoagulants or asthma medication interactions.'), nl
    ;   true).

% Checks for intersection between 2 lists and returns true
intersection([H|T], List) :-
    (member(H, List) -> true ; intersection(T, List)).

% Checks if one list belongs to another or is part of another
subset([], _).
subset([H|T], List) :-
    member(H, List),
    subset(T, List).

% User interface to select symptoms, allergies, and current medications
select_options(Options, Selected) :-
    write('Select options by entering their numbers separated by commas: '), nl,
    write(Options), nl,
    read(Input),
    atomic_list_concat(SelectedAtoms, ',', Input),
    maplist(atom_number, SelectedAtoms, Indices),
    findall(Option, (nth1(Index, Options, Option), member(Index, Indices)), Selected).

% Patient diagnosis interface
start_diagnosis :-
    findall(S, symptom(_, S), SymptomLists),
    flatten(SymptomLists, AllSymptoms),
    sort(AllSymptoms, UniqueSymptoms),
    write('Select patient symptoms: '), nl,
    select_options(UniqueSymptoms, Symptoms),

    write('Enter patient age: '), nl,
    read(Age),

    write('Select any allergies (or none): '), nl,
    AllergiesOptions = [allergy_to_penicillin, allergy_to_sulfa, none],
    select_options(AllergiesOptions, Allergies),

    write('Select current medications (or none): '), nl,
    MedicationsOptions = [anticoagulants, asthma_medication, none],
    select_options(MedicationsOptions, CurrentMeds),

    (Allergies == [none] -> AllergiesList = [] ; AllergiesList = Allergies),
    (CurrentMeds == [none] -> CurrentMedsList = [] ; CurrentMedsList = CurrentMeds),

    (diagnosis(Illness, Symptoms, Medication, Age, AllergiesList, CurrentMedsList) ->
        format('Diagnosis: ~w\nMedication: ~w\nTHANK YOU FOR USING DR. WINTER.', [Illness, Medication])
    ;   write('No diagnosis could be made based on the provided information.')).
