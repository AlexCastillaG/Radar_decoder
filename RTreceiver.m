u = udpport("IPV4");
u
hello= "CCC"
write(u,hello,"string","192.168.2.237",16000);
data = read(u,10,"uint16");
data