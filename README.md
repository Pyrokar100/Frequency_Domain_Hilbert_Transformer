# Frequency_Domain_Hilbert_Transformer

This a design of a digital integrated circuit using Cadence Software. The idea is to get a Hilbert Frequency Domain Transformer.

    DFHT.sdc is the design constraint file that defines the clock frequency and uncertainty.

-DFHT.v is the top verilog module f the system that was previously design.


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



    Create a file to perform logic synthesis, in this coursework (Cadence RTL complier was used) and in the software run the script " FDHT_synth.tcl ".

    To check timing and area reports for typical, slow and fast corners, it is required to create a folder to save the timing diagrams, then you may run the " FDHT_synth.tcl ", " FDHT_synth_slow.tcl, " FDHT_synth_fast.tcl” to see the reports for different corners.

    Next step is generating the layout, you need to check that the "FDHT_synth.v" file is located in the Outputs folder, that file is created automatically after logical synthesis. And after that a folder must be created from which the script will be launched for layout generation, in this work we used Cadence Encounter software and the file was named “Encounter”.

    Run the script “FDHT_PaR.tcl”, this is the main script that contains all steps of creating the layout.

    After running the script “FDHT_PaR.tcl” , some files will be generated and will be located in the Outputs, these files include "FDHT.def", "top_netlist.v" (for simulation), "physical_netlist.v” (to be import into the software, in this project, Cadence Virtuoso was used and at this stage DRC and LVS verification were performed), "FDHT_MAX.sdf", " FDHT _MIN.sdf" (can be used for simulation, taking into account the influence of the effects obtained during layout creation).

It is critical to note that after generating the layout, different timing reports are created, you may read them in the “timing reports” file, the timing reports are especially important for post-Route and signoff stages for both setup and hold, in addition to that three other verifications are done: geometry, DRC and connectivity.

    After synthesis and layout generation stages, functional verification should be carried out to make sure that the device works properly. To check the functional correctness of the Verilog module after the topology generation stage, we use a different test bench file, which is named “FDHT_tb_final.v” which is located in Source folder.



