setBatchMode(true); 
a=getTitle(); 
slices=nSlices; 
stack=0; 
run("Set Measurements...", "area mean integrated display redirect=None decimal=3");
for (i=1; i<=slices; i++) { 
showProgress(i, slices); 
selectImage(a); 
 setSlice(i); 
   run("Measure");
}
        