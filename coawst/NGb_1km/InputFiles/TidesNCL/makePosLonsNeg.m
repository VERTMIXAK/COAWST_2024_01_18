fileNeg = 'NGb_1km_tides_negLons.nc'
filePos = 'NGb_1km_tides_posLons.nc'

unix(['cp ',filePos,' ',fileNeg]);

dum = nc_varget(fileNeg,'lon_rho');
dum = dum-360;
nc_varput(fileNeg,'lon_rho',dum);

dum = nc_varget(fileNeg,'lon_psi');
dum = dum-360;
nc_varput(fileNeg,'lon_psi',dum);

dum = nc_varget(fileNeg,'lon_u');
dum = dum-360;
nc_varput(fileNeg,'lon_u',dum);

dum = nc_varget(fileNeg,'lon_v');
dum = dum-360;
nc_varput(fileNeg,'lon_v',dum);



