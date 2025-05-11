import 'package:flutter/material.dart';

class PersonalInfoFilterScreen extends StatefulWidget {
  const PersonalInfoFilterScreen({super.key});

  @override
  State<PersonalInfoFilterScreen> createState() => _PersonalInfoFilterScreenState();
}

class _PersonalInfoFilterScreenState extends State<PersonalInfoFilterScreen> {
  String searchTerm = '';
  String selectedCategory = 'all';

  final List<Map<String, String>> personalData = [
    {'name': 'Osama Mohamed', 'category': 'male', 'status': 'passed'},
    {'name': 'Alaa Ahmed', 'category': 'female', 'status': 'failed'},
    {'name': 'Mohamed Salah', 'category': 'male', 'status': 'passed'},
    {'name': 'Nourhan Adel', 'category': 'female', 'status': 'passed'},
    {'name': 'Youssef Tarek', 'category': 'male', 'status': 'failed'},
  ];

  List<Map<String, String>> get filteredData {
    return personalData.where((item) {
      final nameMatch = item['name']!.toLowerCase().contains(searchTerm.toLowerCase());
      final categoryMatch = selectedCategory == 'all' ||
          item['category'] == selectedCategory ||
          item['status'] == selectedCategory;
      return nameMatch && categoryMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filter Personal Info")),
      body: Column(
        children: [
          // Filter Container
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFFEBC069)),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
            ),
            child: Row(
              children: [
                // Search Input
                Expanded(
                  flex: 6,
                  child: TextField(
                    onChanged: (value) {
                      setState(() => searchTerm = value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search by Name, ID, or Specialization...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Color(0xFFEBC069)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    ),
                    style: const TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 14,
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                // Category Dropdown
                Expanded(
                  flex: 4,
                  child: DropdownButtonFormField<String>(
                    value: selectedCategory,
                    items: const [
                      DropdownMenuItem(value: 'all', child: Text('All Categories')),
                      DropdownMenuItem(value: 'male', child: Text('Male')),
                      DropdownMenuItem(value: 'female', child: Text('Female')),
                      DropdownMenuItem(value: 'passed', child: Text('Passed')),
                      DropdownMenuItem(value: 'failed', child: Text('Failed')),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setState(() => selectedCategory = value);
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Color(0xFFEBC069)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      filled: true,
                      fillColor: Color(0xFFFCF8F0),
                    ),
                    style: const TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Filtered Data List
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                final item = filteredData[index];
                return ListTile(
                  title: Text(item['name']!),
                  subtitle: Text('Category: ${item['category']} | Status: ${item['status']}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
