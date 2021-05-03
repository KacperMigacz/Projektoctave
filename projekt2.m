disp('wybierz model samochodu');
disp('1 - osobowy');
disp('2- kabriolet');
disp('3 - jeep');
q=input('model numer : ');
t = linspace(0,2*pi,200);
b=  [1 1];
d=  input('podaj dlugosc= ');
h=  input('podaj wysokosc nadwozia= ');
hw= input(' podaj wysokosc szoferki= ');
xw= input('podaj przesuniecie szoferki od przodu samochodu= ');
r=  input(' podaj promien kol= ');
a=  input(' podaj wspolrzedne x-owe srodkow kol= ');
if q==1
 dw= input('podaj dlugosc szoferki= ');
clf
    %1  %2        %3        %4           %5               %6                 %7
x=[1, (1+d),     (1+d), ((1+d)-xw), ((1+d)-(xw+1)), ((1+d)-(xw+1+dw)), (1+d)-(xw+dw+3)];
y=[1,     1, (1+0.8*h),      (1+h),       (1+h+hw),          (1+h+hw),             1+h];


sx1=[ ((1+d)-xw), ((1+d)-(xw+((dw+2)/2))), (1+d)-(xw+(dw+2)/2),((1+d)-(xw+1)) ];
sy1=[      (1+h),                (1+h),             (1+h+hw),      (1+h+hw) ];

sx2=[((1+d)-(xw+(dw+2)/2)), ((1+d)-(xw+(dw+2)/2)), ((1+d)-(xw+(dw+2))), ((1+d)-(xw+(dw+0.5))) ];
sy2=[             (1+h+hw),                 (1+h),               (1+h),            (1+h+hw) ];

sx3=[((1+d)-(xw+0.15)), ((1+d)-(xw+((dw+2)/2))+0.1), ((1+d)-(xw+(dw+2)/2)+0.1), ((1+d)-(xw+1+0.1))];
sy3=[       (1+h+0.1),                   (1+h+0.1),              (1+h+hw-0.1),      (1+h+hw-0.1) ];


sx4=[((1+d)-(xw+((dw+2)/2)+0.1)), ((1+d)-(xw+((dw+2)/2)+0.1)), ((1+d)-(xw+(dw+2))+0.2), ((1+d)-(xw+(dw+0.5))+0.1) ];
sy4=[               (1+h+hw-0.1),                   (1+h+0.1),               (1+h+0.1),              (1+h+hw-0.1) ];

xb=[ ((1+d)-(xw+(dw+0.5))), ((1+d)-(xw+(dw+2))) , 1   ,  (1+d)-(xw+1+dw)];
yb=[                1+h+hw,        1+h          , 1+h ,           1+h+hw ];

xk1= a(1)+r*cos(t);
yk1= b(1)+r*sin(t);

xk2= a(2)+r*cos(t);
yk2= b(2)+r*sin(t);

xk3= a(1)+(2*r/3)*cos(t);
yk3= b(1)+(2*r/3)*sin(t);

xk4= a(2)+(2*r/3)*cos(t);
yk4= b(2)+(2*r/3)*sin(t);


dx1=[ ((1+d)-xw), ((1+d)-xw) ,((1+d)-(xw+((dw+2)/2))) , ((1+d)-(xw+((dw+2)/2)))];
dy1=[      (1+h),           1,                        1,                  (1+h)];

dx2=[ ((1+d)-(xw+((dw+2)/2))), ((1+d)-(xw+((dw+2)/2))), ((1+d)-(xw+(dw+1))), ((1+d)-(xw+(dw+2)))];
dy2=[                   (1+h),                       1,                   1,                 1+h];


axis ([-1,d+3,-1,d+3]);

hold
fill(x,y,'white');
fill(dx1,dy1,'white');
fill(dx2,dy2,'white');
fill(xk1,yk1,'white');
fill(xk2,yk2,'white');
fill(xk3,yk3,'white');
fill(xk4,yk4,'white');
fill(sx1,sy1,'white');
fill(sx2,sy2,'white');
fill(sx3,sy3,'white');
fill(sx4,sy4,'white');
fill(xb,yb,'white');

endif
if q==2
  dw= input('podaj dlugosc szoferki= ');
  clf
   %1  %2        %3         %4             %5                 %6                   %7                       %8             %9
x=[1, (1+d),     (1+d), ((1+d)-xw), ((1+d)-(xw+0.3*dw)), ((1+d)-(xw+0.1*dw)) , (1+d)-(xw+dw-0.1*dw) ,    (1+d)-(xw+dw)  ,     1];
y=[1,     1, (1+0.8*h),      (1+h),         (1+h+hw),         (1+h)          ,        (1+h)         ,      (1+h+(hw/2)) , (1+h)];

xk1 = a(1)+r*cos(t);
yk1 = b(1)+r*sin(t);

xk2= a(2)+r*cos(t);
yk2= b(2)+r*sin(t);

xk3=a(1)+(2*r)/3*cos(t);
yk3=b(1)+(2*r)/3*sin(t);

xk4=a(2)+(2*r)/3*cos(t);
yk4=b(2)+(2*r)/3*sin(t);

bx1=[((1+d)-xw), ((1+d)-(xw+0.3*dw)), ((1+d)-(xw+0.1*dw))];
by1=[     (1+h),         (1+h+hw),            (1+h)];

bx2=[(1+d)-(xw+dw-0.1*dw), (1+d)-(xw+dw),  1];
by2=[            (1+h),    1+h+(hw/2), (1+h)];


dx1=[(1+d)-(xw+0.1*dw), (1+d)-(xw+0.1*dw), (1+d)-(xw+0.1*dw+2*dw/3), (1+d)-(xw+0.1*dw+2*dw/3+0.1*dw), (1+d)-(xw+0.1*dw+2*dw/3+0.1*dw),(1+d)-(xw+0.1*dw+2*dw/3)];
dy1=[              1+h,                 1,                        1,                           1+h/3,                         1+2*h/3,            1+h         ];

ux1=[ (1+d)-(xw+0.1*dw+2*dw/3)+0.2*dw, (1+d+0.2*dw)-(xw+0.1*dw+2*dw/3), (1+d+0.1*dw)-(xw+0.1*dw+2*dw/3), (1+d+0.1*dw)-(xw+0.1*dw+2*dw/3)];
uy1=[                  1+2*h/3+0.1*h,                         1+2*h/3,                         1+2*h/3,                  1+2*h/3+0.1*h];

axis ([-1,d+3,-1,d+3]);

hold
fill(x,y,'white');
fill(dx1,dy1,'white');
fill(xk1,yk1,'white');
fill(xk2,yk2,'white');
fill(xk3,yk3,'white');
fill(xk4,yk4,'white');
fill(bx1,by1,'white');
fill(bx2,by2,'white');
fill(ux1,uy1,'white');
endif

if q==3
  clf
   %1     %2            %3         %4         %5                    %6                    %7                             %8           %9         %10
x=[1 , (1+d-0.05*d) ,   (1+d)   ,   (1+d)   , (1+d-0.05*d), (1+d)-(xw+(0.05*d)), (1+d)-(xw+(0.05*d)+(0.1*d)) ,            1    ,   1-0.05*d  ,  1-0.05*d ];
y=[1 ,       1      , (1+0.3*h) , (1+0.7*h) ,     (1+h)   ,       (1+h)        ,             1+h+hw          ,          1+h+hw , 1+h+0.6*hw  ,   1+0.3*h ];

xo=[   1-0.05*d, 1-(0.05*d+0.01*d), 1-(0.05*d+0.01*d), 1-(0.05*d+0.01*d+0.1*d), 1-(0.05*d+0.01*d+0.1*d), 1-(0.05*d+0.01*d), 1-(0.05*d+0.01*d), 1-0.05*d ];
yo=[ 1+h+0.3*hw,        1+h+0.3*hw,        1+h+0.6*hw,              1+h+0.6*hw,                 1+0.3*h,           1+0.3*h,           1+0.6*h,   1+0.6*h];

xo1=[ 1-(0.05*d+0.01*d), 1-(0.05*d+0.01*d+0.1*d), 1-(0.05*d+0.01*d+0.1*d), 1-(0.05*d+0.01*d) ];
yo1=[        1+h+0.6*hw,              1+h+0.6*hw,                 1+0.3*h,          1+0.3*h  ];

xs1=[(1+d)-(0.05*d+0.02*d+xw) , (1+d)-(xw+(0.05*d)+(0.1*d)) ,    1            , 1-0.025*d   , 1-0.025*d ];
ys1=[            (1+h)        ,             1+h+hw-0.025*d  ,  1+h+hw-0.025*d ,  1+h+0.6*hw ,    1+h    ];

xs2=[ (1+d)-((0.05*d)+(0.02*d)+xw) , (1+d)-((0.05*d)+(0.1*d)+xw) , (1+d)-((0.05*d)+(0.1*d)+xw) ];
ys2=[            (1+h)         ,        (1+h+hw-(0.025*d))   ,        (1+h)               ];

xs3=[ (1+d)-((0.15*d)+xw), (1+d)-((0.15*d)+xw) , 3*(d-(xw+(0.15*d)))/4 , 3*(d-(xw+(0.15*d)))/4 ];
ys3=[ (1+h+hw-(0.025*d)) ,        (1+h)        ,         (1+h)       ,  (1+h+hw-(0.025*d)) ];

xs4=[3*(d-(xw+(0.15*d)))/4 , 3*(d-(xw+(0.15*d)))/4 , a(1)  ,        a(1)        ];
ys4=[ (1+h+hw-(0.025*d))   ,       (1+h)           , (1+h) , (1+h+hw-(0.025*d)) ];

xd1=[(1+d)-((0.05*d)+(0.02*d)+xw) , (1+d)-((0.05*d)+(0.02*d)+xw) , 3*(d-(xw+(0.15*d)))/4 , 3*(d-(xw+(0.15*d)))/4 ];
yd1=[           1+h               ,                   1          ,           1           ,        1+h            ];

xd2=[ 3*(d-(xw+(0.15*d)))/4 , 3*(d-(xw+(0.15*d)))/4 , a(1) , a(1)];
yd2=[       1+h             ,            1          ,  1   , 1+h ];

xk1= a(1)+r*cos(t);
yk1= b(1)+r*sin(t);

xk2= a(2)+r*cos(t);
yk2= b(2)+r*sin(t);

xk3= a(1)+(2*r/3)*cos(t);
yk3= b(1)+(2*r/3)*sin(t);

xk4= a(2)+(2*r/3)*cos(t);
yk4= b(2)+(2*r/3)*sin(t);



axis ([-2,d+3,-2,d+3]);

hold

fill(x,y,'white');
fill(xo,yo,'white');
fill(xo1,yo1,'white');
fill(xs1,ys1,'white');
fill(xs2,ys2,'white');
fill(xs3,ys3,'white');
fill(xs4,ys4,'white');
fill(xd1,yd1,'white');
fill(xd2,yd2,'white');
fill(xk1,yk1,'white');
fill(xk2,yk2,'white');
fill(xk3,yk3,'white');
fill(xk4,yk4,'white');
endif