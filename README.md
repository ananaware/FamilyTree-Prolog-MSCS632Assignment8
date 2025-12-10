# Family Tree Program in Prolog  
### MSCS 632 – Advanced Programming Languages  
### Assignment 8  
### Student: Anushka Nanaware  
### Date: December 10, 2025  

---

##  Overview  
This repository contains my Prolog implementation for **Assignment 8: Multi-Paradigm Problem Solving – Prolog Family Tree**.  
The program models a simple family tree using Prolog facts and rules. It demonstrates key logical programming concepts, including:

- Basic relationships  
  - `parent/2`  
  - `male/1`  
  - `female/1`  
- Derived relationships  
  - `grandparent/2`  
  - `sibling/2`  
  - `cousin/2`  
- Recursive logic  
  - `descendant/2`

The project was completed using **SWISH (SWI-Prolog Online Environment)** so all development, testing, and debugging took place in the browser without local installation.

---

##  File Included  
### **family_tree.pl**  
This Prolog file contains:

1. Header with assignment details  
2. Parent, gender, and family facts  
3. Derived rules for grandparent, sibling, cousin, and recursive descendant logic  
4. Comments explaining each part of the implementation  

---

## How to Run the Program  

### Option 1 — **Using SWISH (Recommended)**  
1. Go to: https://swish.swi-prolog.org  
2. Copy the contents of `family_tree.pl` into a new program window  
3. Run queries in the bottom panel, such as:  
   ```prolog
   parent(mary, X).
   sibling(david, X).
   cousin(lily, X).
   grandparent(john, X).
   descendant(lily, john).
    ```
   
Screenshots

Screenshots demonstrating the output of each query are included in my assignment report submission (Microsoft Word/PDF).
These were taken directly from SWISH to ensure accuracy and transparency in the testing process.

Purpose of This Assignment
This project demonstrates how logic programming can be used to express relationships and recursive structures concisely. It also shows the paradigm shift from imperative and functional programming to declarative reasoning in Prolog.
