PRO getrprof


 ; Enter manually before starting the idl 
 ; spawn, "heainit"
 ; spawn, "sasinit"


  savefile='equal_channels.sav'
  RESTORE,savefile              ;eqchan[2,5]
  
  
  FOR i=0,4. DO BEGIN
     
     spawn, "eradial imageset=PN_obs_oot_free_image.fits srcexp='(X,Y) in circle(26956,27662.38,5000)' psfenergy=" + strtrim(eqchan[1,i],1) + " radprofset=radprof_no_oot" + strtrim(i+1,1) +".fits maxradius=250. binwidth=4."

 
  ENDFOR

end

