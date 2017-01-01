dir = getDirectory("Choose a Directory ");
      list = getFileList(dir);
//      setBatchMode(true);
      for (i=000; i<list.length; i++) {
              path = dir+list[i];
 
  if (endsWith(list[i], "/")){
	//if "path" ends with "/", do nothing and skip to the next file
	}else{
	open(path);

	
		dotIndex = lastIndexOf(list[i], ".");
	        if (dotIndex!=-1)
   	          list[i] = substring(list[i], 0, dotIndex); // remove extension
	          myDir = dir+"RGB_tif"+File.separator;
      		    File.makeDirectory(myDir);

    		      sndir = dir+"RGB_tif"+"/";
          	save(sndir+list[i]+".bmp");
	close();

}
}


"Done"

