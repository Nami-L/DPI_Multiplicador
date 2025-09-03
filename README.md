# DPI_Multiplicador

### Ejemplo 2: Simulación de un Multiplicador usando un modelo en C y otro modelo en RTL, Y al final, comparar ambos modelos a través de un Testbench.

Este ejemplo fue realizado usando las herramientas de synopsys.


### Colocar en el bash lo siguiente
setenv GIT_ROOT `git rev-parse --show-toplevel`
setenv UVM_WORK $GIT_ROOT/work/uvm
mkdir -p $UVM_WORK && cd $UVM_WORK
ln -sf $GIT_ROOT/hw/Makefile/Makefile.vcs Makefile