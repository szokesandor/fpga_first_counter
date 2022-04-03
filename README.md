# fpga_first_counter
#fpga #tinyfpga

This is my very first Lattice Diamond project 
The intention is to get familiar with the development IDE with this very simple 
resetable 32bit counter project.

After installation of the IDE, 
 - clone the project via: `git clone https://github.com/szokesandor/fpga_first_counter`
 - Launch Diamond
 - Open the _fpga_first_counter.ldf_ project file. 
   Target devie is set to `LCMXO2-1200HC-5TG144C` this one of the [Tinyfpga](https://store.tinyfpga.com/products/tinyfpga-a2) devices especially the MachOX2. No port definition is used yet, only to get familiar with the simulator...
 - Click on the `Tools -> Simulation Wizard`.
 - Add a project name, e.g. _sim_.
 - Click **next**, 
 - Answer **yes** to to popup window (in order to create a folder of the simulator project files).
 - Process Stage is RTL (you cannot choose other option so) press **next**
 - 'Add an reorder source' dialog: you can safetly press **next**
 - 'Parse HDL files for simulation' dialog lists the source files, that are parsed, below the list the simulation _first_counter_tb_ file is selected, so press **next**
 - Please ensure all three option is selected (Run simulator, Add top level signals to waveform display, Run simulation)
 - Click **Finish**, to run the simulation.
 - Now the `modelsim` will be launched. For me the Finish Vsim dialog appear finally, So I simply press **no**
 
 The main process ends here, now you should have a sucessful simulation ended with results on screen. You might need some additional setup to get results correctly infront of you.
 
 - on the right side there should be a screen with two tabs:
   1. Wave and
   2. _testbench_count.v_
 - Choose Wave
 - In the menubar choose `Simulate --> Runtime options`
 - On the left side of the dialog you see default radix, choose _Hexadecimal_ and press **Ok**
 - Now you can zoom in the `Wave display` scroll with mouse holding CTRL down, into the beginning of the signals.
 - You will see the signals, also the counter value in hexadecimal

Thats all, folks. 
