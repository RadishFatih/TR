s = poly(0,'s');                                  // Define the complex number frequency parameter. Alternatively you can use s = %s.

KO= syslin("c", 1/((s+1)*(s+2)*(s+1)))      // Define the linear continuous transfer function
KR=[-10,10, 30]

nyquist([KO*KR(1);KO*KR(2);KO*KR(3)],["KR=-10";"KR=10";"KR=30"])
