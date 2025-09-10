# String Calculator TDD Kata (Dart)

This project is my solution for the **String Calculator TDD Assessment** as part of the Incubyte hiring process.  
It demonstrates **Test Driven Development (TDD)** in Dart, showing incremental commits for each step of the problem.

---

## ✨ Features Implemented

- `""` → returns `0`
- Single number returns itself (`"1"` → `1`)
- Two numbers, comma-separated (`"1,5"` → `6`)
- Multiple numbers of any length (`"1,2,3"` → `6`)
- Newline (`\n`) can also be used as a delimiter  
  Example: `"1\n2,3"` → `6`
- Custom delimiters:
    - Single char: `"//;\n1;2"` → `3`
    - Multiple chars: `"//[***]\n1***2***3"` → `6`
    - Multiple delimiters: `"//[*][%]\n1*2%3"` → `6`
- Negative numbers throw an error:  
  `"1,-2,-3"` → `FormatException: negative numbers not allowed -2,-3`


## 🚀 Getting Started
1. **Clone the repository**:
     git clone
   
2. **Navigate to the project directory**:
     cd string_calculator

3. **Install dependencies**:
     dart pub get

4. **Run tests**:
     dart test
