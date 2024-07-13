
# Doctor Winter

![Doctor Winter](https://via.placeholder.com/150)

## Overview

**Doctor Winter** is an intelligent medical diagnosis system written in Prolog. It allows users to diagnose common and serious illnesses based on symptoms, age, allergies, and current medications. The system also suggests appropriate medications and provides additional considerations for certain conditions.

## Features

- **Interactive Symptom Selection**: Users can choose from a list of possible symptoms.
- **Age-Based Considerations**: Age-specific recommendations and restrictions.
- **Allergy and Medication Awareness**: Avoids contraindicated treatments based on allergies and current medications.
- **Expanded Illness Database**: Includes both common winter illnesses and more serious conditions with similar symptoms.

## Usage

1. **Load the Prolog Code**: Load the `Doctor_Winter_3.pl` file into your Prolog interpreter.
2. **Start Diagnosis**: Run the `start_diagnosis.` predicate to begin the diagnostic process.
3. **Follow Prompts**: Select symptoms, enter age, allergies, and current medications as prompted.
4. **View Results**: The system will provide a diagnosis and suggested medications.

## Example

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

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/DAVIDS4A/Doctor-Winter.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Doctor-Winter
   ```

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License.

## Acknowledgements

Special thanks to the Prolog community for their continuous support and contributions.

---

![GitHub](https://img.shields.io/github/license/DAVIDS4A/Doctor-Winter?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/DAVIDS4A/Doctor-Winter?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/DAVIDS4A/Doctor-Winter?style=for-the-badge)
