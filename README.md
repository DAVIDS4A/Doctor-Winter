
# <span style="color:#3498db;">Doctor Winter</span>

![Doctor Winter](https://via.placeholder.com/150)

## <span style="color:#e74c3c;">Overview</span>

**<span style="color:#2ecc71;">Doctor Winter</span>** is an intelligent medical diagnosis system written in Prolog. It allows users to diagnose common and serious illnesses based on symptoms, age, allergies, and current medications. The system also suggests appropriate medications and provides additional considerations for certain conditions.

## <span style="color:#f1c40f;">Features</span>

- **<span style="color:#9b59b6;">Interactive Symptom Selection</span>**: Users can choose from a list of possible symptoms.
- **<span style="color:#e67e22;">Age-Based Considerations</span>**: Age-specific recommendations and restrictions.
- **<span style="color:#1abc9c;">Allergy and Medication Awareness</span>**: Avoids contraindicated treatments based on allergies and current medications.
- **<span style="color:#8e44ad;">Expanded Illness Database</span>**: Includes both common winter illnesses and more serious conditions with similar symptoms.

## <span style="color:#e74c3c;">Usage</span>

1. **Load the Prolog Code**: Load the `Doctor_Winter_3.pl` file into your Prolog interpreter.
2. **Start Diagnosis**: Run the `start_diagnosis.` predicate to begin the diagnostic process.
3. **Follow Prompts**: Select symptoms, enter age, allergies, and current medications as prompted.
4. **View Results**: The system will provide a diagnosis and suggested medications.

## <span style="color:#f1c40f;">Example</span>

```prolog
?- start_diagnosis.
Enter patient symptoms separated by commas:
[runny_nose, cough, fever]
Enter patient age:
25
Enter any allergies (or none):
none
Enter current medications (or none):
none
Diagnosis: flu
Medication: [antivirals, painrelief, fluidsrest]
THANK YOU FOR USING DR. WINTER.
```

## <span style="color:#2ecc71;">Installation</span>

1. Clone the repository:
   ```bash
   git clone https://github.com/DAVIDS4A/Doctor-Winter.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Doctor-Winter
   ```

## <span style="color:#e67e22;">Contributing</span>

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## <span style="color:#9b59b6;">License</span>

This project is licensed under the MIT License.

## <span style="color:#8e44ad;">Acknowledgements</span>

Special thanks to the Prolog community for their continuous support and contributions.

---

![GitHub](https://img.shields.io/github/license/DAVIDS4A/Doctor-Winter?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/DAVIDS4A/Doctor-Winter?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/DAVIDS4A/Doctor-Winter?style=for-the-badge)
