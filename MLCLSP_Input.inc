set k / 
P1
P2
P3
P4
/

set t / 
t1
t2
t3
t4
/

set j / 
m1
m2
/;

KT(k,t)=yes;
JT(j,t)=yes;

KJ(k,j)=no;
KK(k,k)=no;

set kta / 
kta1
kta2
kta3
kta4
kta5
kta6
kta7
kta8
kta9
kta10
kta11
kta12
kta13
kta14
kta15
kta16
/;

KTaKT(kta,k,t)=no;

KTaKT('kta1','P1','t1')=yes;
KTaKT('kta2','P1','t2')=yes;
KTaKT('kta3','P1','t3')=yes;
KTaKT('kta4','P1','t4')=yes;
KTaKT('kta5','P2','t1')=yes;
KTaKT('kta6','P2','t2')=yes;
KTaKT('kta7','P2','t3')=yes;
KTaKT('kta8','P2','t4')=yes;
KTaKT('kta9','P3','t1')=yes;
KTaKT('kta10','P3','t2')=yes;
KTaKT('kta11','P3','t3')=yes;
KTaKT('kta12','P3','t4')=yes;
KTaKT('kta13','P4','t1')=yes;
KTaKT('kta14','P4','t2')=yes;
KTaKT('kta15','P4','t3')=yes;
KTaKT('kta16','P4','t4')=yes;


set jta / 
jta1
jta2
jta3
jta4
jta5
jta6
jta7
jta8
/;

JTaJT(jta,j,t)=no;

JTaJT('jta1','m1','t1')=yes;
JTaJT('jta2','m1','t2')=yes;
JTaJT('jta3','m1','t3')=yes;
JTaJT('jta4','m1','t4')=yes;
JTaJT('jta5','m2','t1')=yes;
JTaJT('jta6','m2','t2')=yes;
JTaJT('jta7','m2','t3')=yes;
JTaJT('jta8','m2','t4')=yes;


KJ('P1','m1')=yes;
KJ('P2','m1')=yes;
KJ('P3','m2')=yes;
KJ('P4','m2')=yes;

a(k,i)=0;
KK('P3','P1')=yes;
a('P3','P1')= 1;
KK('P3','P2')=yes;
a('P3','P2')= 1;
KK('P4','P1')=yes;
a('P4','P1')= 1;

ts('P1')= 20.0;
tp('P1')= 1.0;
s('P1')= 200.0;
h('P1')= 40.0;
y_0('P1')= 50.0;
z('P1')= 1;

ts('P2')= 30.0;
tp('P2')= 1.0;
s('P2')= 500.0;
h('P2')= 35.0;
y_0('P2')= 120.0;
z('P2')= 1;

ts('P3')= 10.0;
tp('P3')= 1.0;
s('P3')= 300.0;
h('P3')= 15.0;
y_0('P3')= 100.0;
z('P3')= 1;

ts('P4')= 20.0;
tp('P4')= 1.0;
s('P4')= 1000.0;
h('P4')= 4.0;
y_0('P4')= 110.0;
z('P4')= 1;


oc('m1')= 200.0;
oc('m2')= 200.0;

C('m1','t1')= 150.0;
C('m1','t2')= 10.0;
C('m1','t3')= 150.0;
C('m1','t4')= 150.0;
C('m2','t1')= 150.0;
C('m2','t2')= 150.0;
C('m2','t3')= 150.0;
C('m2','t4')= 150.0;

d('P1','t1')= 10.0;
d('P1','t2')= 20.0;
d('P1','t3')= 30.0;
d('P1','t4')= 80.0;
d('P2','t1')= 20.0;
d('P2','t2')= 80.0;
d('P2','t3')= 50.0;
d('P2','t4')= 90.0;
d('P3','t1')= 0.0;
d('P3','t2')= 0.0;
d('P3','t3')= 30.0;
d('P3','t4')= 0.0;
d('P4','t1')= 0.0;
d('P4','t2')= 0.0;
d('P4','t3')= 0.0;
d('P4','t4')= 80.0;
