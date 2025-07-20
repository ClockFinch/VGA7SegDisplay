setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\VGA7segDisplay.v
comp -include "$dsn\src\TestBench\VGA7segDisplay_TB.v"
asim +access +r VGA7segDisplay_tb

wave
wave -noreg clk
wave -noreg rst
wave -noreg seg
wave -noreg h_sync
wave -noreg v_sync
wave -noreg pixel

run 3000.00 ns

#End simulation macro
