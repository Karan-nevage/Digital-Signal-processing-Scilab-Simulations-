clf()
N=24;
Whm=window('hm',N);//Hamming window
subplot(121);
plot((1:N)',[Whm]')
set(gca(),'grid',[1 1]*color('gray'))
xlabel("n")
ylabel("w n")
title(gettext("Profile plot"))
n=256;
[Whm,fr]=frmag(Whm,n);
subplot(122);
plot(fr',20*log10([Whm]'))
set(gca(),'grid',[1 1]*color('gray'))
xlabel(gettext("Pulsation(rad/s)"))
ylabel(gettext("Magnitude(dB)"))
legend(["Hamming N=24"]);
title(gettext("Magnitude plot"))
