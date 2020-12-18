# Αρχιτεκτονική Υπολογιστών
## Πάκας Μάριος 9498
## Μέτα Λουίς-Κοσμάς 9390
### Εργαστήριο 3  


---
### Περιεχόμενα
   1. [Βήμα 1ο](#1)
      1. [Πρώτο ερώτημα](#1_1)
      2. [Δεύτερο ερώτημα](#1_2)
      3. [Τρίτο ερώτημα](#1_3)
   2. [Βήμα 2ο](#2)
      1. [Πρώτο ερώτημα](#2_1)
      2. [Δεύτερο ερώτημα](#2_2)
   3. [Κριτική](#3)


<a name="1"></a>
## Βήμα 1ο

Στο συγκεκριμένο βήμα δοκιμάσαμε όπως ζητήθηκε από την εκφώνηση να τρέξουμε το McPAT για τους επεξεργαστές Xeon και Niagara. 

<a name="1_1"></a>
1) Πρώτο ερώτημα

Αναζητώντας βιβλιογραφία για το dynamic power συμπεράναμε πως υπάρχουν 3 είδη power dissipation, το _dynamic_, το _static_ και το _short-circuit power_.

**Power Modeling**  
   - _Power dissipation of CMOS circuits has three main components: dynamic, short-circuit, and leakage power. Circuits dissipate dynamic power when they charge and discharge the capacitive loads to switch states. Dynamic power is proportional to the total load capacitance, the supply voltage, the voltage swing during switching, the clock frequency, and the activity factor. We calculate the load capacitance of a module by decomposing it into basic circuit blocks, and using analytic models for each block with appropriately sized devices. We calculate the activity factor using access statistics from architectural simulation together with circuit properties. Switching circuits also dissipate short-circuit power due to a momentary short through the pull-up and pull-down devices. We compute the short-circuit power using the equations derived in the work by Nose et al. [32] that predicts trends for short-circuit power. If the ratio of the threshold voltage to the supply voltage shrinks, short-circuit power becomes more significant. It is typically about 10% of the total dynamic power, however it can be as high as 25% of the dynamic power in some cases._
 
Όσον αφορά το leakage βρήκαμε πως υπάρχουν δύο μηχανισμοί, το _Subthreshold leakage_ και το _Gate leakage_. Παρατηρήσαμε επίσης ότι εξαρτάται από πολλές παραμέτρους το _leakage_ και ότι το _Subthreshold leakage_ έχει μεγαλύτερη τιμή από το _Gate leakage_ σε κάθε περίπτωση.  

## TODO   
(Αν τρέξετε διαφορετικά προγράμματα σε έναν επεξεργαστή ποιο θα 
επηρεαστεί  και  πώς;  Έχει  σημασία  πόσο  μεγάλο  (σε  χρονική  διάρκεια  εκτέλεσης)  είναι  ένα 
πρόγραμμα; )

Το παρακάτω McPAT Framework μας βοηθάει στο να αντιληφθούμε περαιτέρω την λειτουργία του McPAT.

![McPAT Framework](https://github.com/lkmeta/computer-architecture-lab3/blob/main/McPAT%20framework.png)

[Πηγή](https://www.hpl.hp.com/research/mcpat/micro09.pdf)

<a name="1_2"></a>
2) Δεύτερο ερώτημα

<a name="1_3"></a>
3) Τρίτο ερώτημα



<a name="2"></a>
## Βήμα 2ο

<a name="2_1"></a>
1) Πρώτο ερώτημα

<a name="2_2"></a>
2) Δεύτερο ερώτημα

<a name="3"></a>
# Κριτική 

# Βιβλιογραφία
- https://ieeexplore.ieee.org/document/5375438/authors  
- https://www.hpl.hp.com/research/mcpat/micro09.pdf
