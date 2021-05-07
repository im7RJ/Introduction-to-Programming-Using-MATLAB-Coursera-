function output= echo_gen(input,fs,delay,amp)

         [row,col] = size(input);
         echo_time = round(delay*fs);
         signal = zeros(row+echo_time,1);
         EchoSignal = signal ;

           for i=1:row
               signal(echo_time+i,1) =input(i,1)*amp ;
               EchoSignal(i) = input(i);
           end

               EchoSignal = EchoSignal + signal ;
               range = abs(EchoSignal) ;
               max_range = max(range);
        
               if max_range>1
                  EchoSignal = EchoSignal/max_range;
               end
                 
               output = EchoSignal ;
end
