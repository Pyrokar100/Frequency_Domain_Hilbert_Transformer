# Frequency_Domain_Hilbert_Transformer

This a design of a digital integrated circuit using Cadence Software. The idea is to get a Hilbert Frequency Domain Transformer.


-    DFHT.sdc is the design constraint file that defines the clock frequency and uncertainty.
- DFHT.v is the top verilog module f the system that was previously design.


-DFHT_tb is the test bench. (No synthethizable) 


-Module_pins is I/O assignment file to the layout process

-MMMC is a file for a corner description -X-FAB file is the technology that was used to synthesize
About

The design of this digital integrated circuit can be divided into the following stages:
1. Writing the device's program code;
2. Modeling at the functional level;
3. The synthesis of software code for a given library of digital cells;
4. Modeling at the library cell level;
5. Designing the topology and export data;
6. Modeling topology-aware;
7. Import to Virtuoso;
8. Verification device

