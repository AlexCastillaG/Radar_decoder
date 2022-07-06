clear
clc


data_length = 1083;
fft_length = 503;
u = udpport("IPV4",Timeout=1);
hello= "CCC";
x_axis=linspace(1,fft_length,fft_length);
figure(1)

while true
    t0 = clock;
    write(u,hello,"string","192.168.2.237",16000);
    
        while etime(clock, t0) < 7
            data_mean=[];
            while size(data_mean,1) < 2
                data = dec2hex(read(u,1,"uint8"));
                if data == char("2")
                    data = dec2hex(read(u,1,"uint8"));
                    if data == char("20")
                        data = dec2hex(read(u,1,"uint8"));
                    end
                        if data == char("FD")
                            data = read(u,data_length,"uint8");
                            data=data(10:512);
                            data_mean=[data_mean;data];

                        end
                end

            end
            
            data_mean=mean(data_mean)
            plot(x_axis,data_mean)
            axis([ 10, fft_length, 0 , 128 ]);
            drawnow;
        end
end


clear figure