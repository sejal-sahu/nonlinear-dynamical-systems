clear all

format long

a = 1;
b=1;
d=1439/2500;
f=1;
g=2;

N=120000;

x=zeros(1, N+1);
y=zeros(1, N+1);
z=zeros(1, N+1);
t=zeros(1, N+1);

dt=0.01;


x(1)=-0.4473; 
y(1)=-0.4544; 
z(1)=0.5863;
t(1)=0;


for j=1:N
    t(j+1)=t(j)+dt;
    k1=dt*EQ1(x(j),y(j),a);
    l1=dt*EQ2(x(j),y(j), z(j), d);
    m1=dt*EQ3(x(j),y(j),z(j),b,f,g);
    
    k2=dt*EQ1(x(j)+k1/2,y(j)+l1/2,a);
    l2=dt*EQ2(x(j)+k1/2,y(j)+l1/2, z(j)+m1/2, d);
    m2=dt*EQ3(x(j)+k1/2,y(j)+l1/2, z(j)+m1/2, b,f,g);
    
    k3=dt*EQ1(x(j)+k2/2,y(j)+l2/2,a);
    l3=dt*EQ2(x(j)+k2/2,y(j)+l2/2, z(j)+m2/2, d);
    m3=dt*EQ3(x(j)+k2/2,y(j)+l2/2,z(j)+m2/2, b,f,g);
    
    k4=dt*EQ1(x(j)+k3,y(j)+l3,a);
    l4=dt*EQ2(x(j)+k3,y(j)+l3, z(j)+m3, d);
    m4=dt*EQ3(x(j)+k3,y(j)+l3,z(j)+m3, b,f,g);
    
    
    
    x(j+1)= x(j) + (k1+2*k2+2*k3+k4)/6;
    y(j+1)= y(j) + (l1+2*l2+2*l3+l4)/6;
    z(j+1)= z(j) + (m1+2*m2+2*m3+m4)/6;
    
end




plot3(x,y,z,'b-','LineWidth',4);
xlabel('X')
ylabel('Y')
zlabel('Z')
grid on;

hold on;


x(1)=-0.4398; 
y(1)=-0.4413; 
z(1)=0.5777;
t(1)=0;


for j=1:N
    t(j+1)=t(j)+dt;
    k1=dt*EQ1(x(j),y(j),a);
    l1=dt*EQ2(x(j),y(j), z(j), d);
    m1=dt*EQ3(x(j),y(j),z(j),b,f,g);
    
    k2=dt*EQ1(x(j)+k1/2,y(j)+l1/2,a);
    l2=dt*EQ2(x(j)+k1/2,y(j)+l1/2, z(j)+m1/2, d);
    m2=dt*EQ3(x(j)+k1/2,y(j)+l1/2, z(j)+m1/2, b,f,g);
    
    k3=dt*EQ1(x(j)+k2/2,y(j)+l2/2,a);
    l3=dt*EQ2(x(j)+k2/2,y(j)+l2/2, z(j)+m2/2, d);
    m3=dt*EQ3(x(j)+k2/2,y(j)+l2/2,z(j)+m2/2, b,f,g);
    
    k4=dt*EQ1(x(j)+k3,y(j)+l3,a);
    l4=dt*EQ2(x(j)+k3,y(j)+l3, z(j)+m3, d);
    m4=dt*EQ3(x(j)+k3,y(j)+l3,z(j)+m3, b,f,g);
    
    
    
    x(j+1)= x(j) + (k1+2*k2+2*k3+k4)/6;
    y(j+1)= y(j) + (l1+2*l2+2*l3+l4)/6;
    z(j+1)= z(j) + (m1+2*m2+2*m3+m4)/6;
    
end

plot3(x,y,z,'r-','LineWidth',4);
