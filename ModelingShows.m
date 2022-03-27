DataSource = '2.txt';
ReadValume = 1000000;
Dist = 3;
Phi =1;
Theta = 2;

[disArray,ThetaArray,PhiArray] = TxtToDataArray(DataSource,ReadValume,Dist,Phi,Theta);
[x,y,z]=sph2rec(disArray,ThetaArray,PhiArray);
i=50;
while(i>0)
    x(x==max(x))=[0];
    y(y==max(y))=[0];
    z(z==max(z))=[0];
    x(x==min(x))=[0];
    y(y==min(y))=[0];
    z(z==min(z))=[0];
    i=i-1;
end
scatter3(z,x, y,10,z,'filled');
xlabel("x(mm)");
ylabel("y(mm)");
zlabel("z(mm)");
axis([-200,200,-200,200,-10,200])
h=colorbar;
set(get(h,'label'),'string','高度')


