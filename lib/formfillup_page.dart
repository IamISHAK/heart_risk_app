import 'package:flutter/material.dart';

class FormFillUpPage extends StatefulWidget {
  const FormFillUpPage({super.key});

  @override
  FormFillUpPageState createState() => FormFillUpPageState();
}

class FormFillUpPageState extends State<FormFillUpPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers and Variables for Inputs
  final TextEditingController _ageController = TextEditingController();
  String? _selectedGender;
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _apHiController = TextEditingController();
  final TextEditingController _apLoController = TextEditingController();
  String? _cholesterolLevel;
  String? _glucoseLevel;
  String? _smokingStatus;
  String? _alcoholStatus;
  String? _activeLevel;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Collect all data for submission
      Map<String, dynamic> formData = {
        'age': int.tryParse(_ageController.text),
        'gender': _selectedGender,
        'height': int.tryParse(_heightController.text),
        'weight': int.tryParse(_weightController.text),
        'ap_hi': int.tryParse(_apHiController.text),
        'ap_lo': int.tryParse(_apLoController.text),
        'cholesterol': _cholesterolLevel,
        'glucose': _glucoseLevel,
        'smoking': _smokingStatus,
        'alcohol': _alcoholStatus,
        'active': _activeLevel,
      };

      print('Form Data: $formData');
      // Perform desired actions like storing the data or navigating
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Fill-Up'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Age
                TextFormField(
                  controller: _ageController,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Gender
                DropdownButtonFormField<String>(
                  value: _selectedGender,
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Male', 'Female', 'Other']
                      .map((gender) => DropdownMenuItem(
                    value: gender,
                    child: Text(gender),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your gender';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Height
                TextFormField(
                  controller: _heightController,
                  decoration: const InputDecoration(
                    labelText: 'Height (cm)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your height';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Weight
                TextFormField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    labelText: 'Weight (kg)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your weight';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // AP_HI
                TextFormField(
                  controller: _apHiController,
                  decoration: const InputDecoration(
                    labelText: 'Systolic Blood Pressure (ap_hi)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your systolic blood pressure';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // AP_LO
                TextFormField(
                  controller: _apLoController,
                  decoration: const InputDecoration(
                    labelText: 'Diastolic Blood Pressure (ap_lo)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your diastolic blood pressure';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Cholesterol
                DropdownButtonFormField<String>(
                  value: _cholesterolLevel,
                  decoration: const InputDecoration(
                    labelText: 'Cholesterol Level',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Normal', 'Above Normal', 'Well Above Normal']
                      .map((level) => DropdownMenuItem(
                    value: level,
                    child: Text(level),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _cholesterolLevel = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your cholesterol level';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Glucose
                DropdownButtonFormField<String>(
                  value: _glucoseLevel,
                  decoration: const InputDecoration(
                    labelText: 'Glucose Level',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Normal', 'Above Normal', 'Well Above Normal']
                      .map((level) => DropdownMenuItem(
                    value: level,
                    child: Text(level),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _glucoseLevel = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your glucose level';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Smoking Status
                DropdownButtonFormField<String>(
                  value: _smokingStatus,
                  decoration: const InputDecoration(
                    labelText: 'Smoking Status',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Yes', 'No']
                      .map((status) => DropdownMenuItem(
                    value: status,
                    child: Text(status),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _smokingStatus = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your smoking status';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Alcohol
                DropdownButtonFormField<String>(
                  value: _alcoholStatus,
                  decoration: const InputDecoration(
                    labelText: 'Alcohol Consumption',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Yes', 'No']
                      .map((status) => DropdownMenuItem(
                    value: status,
                    child: Text(status),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _alcoholStatus = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your alcohol consumption status';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                // Active Level
                DropdownButtonFormField<String>(
                  value: _activeLevel,
                  decoration: const InputDecoration(
                    labelText: 'Physical Activity Level',
                    border: OutlineInputBorder(),
                  ),
                  items: ['Low', 'Moderate', 'High']
                      .map((level) => DropdownMenuItem(
                    value: level,
                    child: Text(level),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _activeLevel = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your physical activity level';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Submit Button
                Center(
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
