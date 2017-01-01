
// This macro batch measures a folder of images.
// Use the Analyze>Set Measurements command
// to specify the measurement parameters. Check 
// "Display Label" in the Set Measurements dialog
// and the file names will be added to the first 
// column of the "Results" table.

macro "Batch Measure" {
    dir = getDirectory("Choose a Directory ");
    list = getFileList(dir);
    if (getVersion>="1.40e")
        setOption("display labels", true);
    run("Set Measurements...", "area mean integrated limit display redirect=None decimal=3");
    setBatchMode(true);
    for (i=0; i<list.length; i++) {
        path = dir+list[i];
        showProgress(i, list.length);
        if (!endsWith(path,"/")) open(path);
        if (nImages>=1) {
            run("Smooth");
            setAutoThreshold("Otsu dark");
            setThreshold(100, 4000);
            setOption("BlackBackground", false);
            run("Convert to Mask");
            run("Analyze Particles...", "size=0.1-1 display");
            close();
        }
    }
}

