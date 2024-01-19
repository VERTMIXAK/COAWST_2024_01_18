file = 'IC.nc';

dum = nc_varget(file,'ocean_time');
dum = 45227.9888;
nc_varput(file,'ocean_time',dum);

dum = nc_varget(file,'zeta');
[ny,nx] = size(dum);
dum2 = zeros(1,ny,nx);
nc_varput(file,'zeta',dum2);

dum = nc_varget(file,'ubar');
[ny,nx] = size(dum);
dum2 = zeros(1,ny,nx);
nc_varput(file,'ubar',dum2);

dum = nc_varget(file,'vbar');
[ny,nx] = size(dum);
dum2 = zeros(1,ny,nx);
nc_varput(file,'vbar',dum2);

dum = nc_varget(file,'u');
[nz,ny,nx] = size(dum);
dum2 = zeros(1,nz,ny,nx);
nc_varput(file,'u',dum2);

dum = nc_varget(file,'v');
[nz,ny,nx] = size(dum);
dum2 = zeros(1,nz,ny,nx);
nc_varput(file,'v',dum2);

