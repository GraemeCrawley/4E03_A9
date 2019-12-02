function [avg_response] = hw92a(lambda,mu,simtime)
n = 20;
q=zeros(1,n); %queue lengths
ttne(2:n+1)=Inf; %time to next completion at queue 1 - n
ttne(1)=-log(rand)/lambda;
t=0;
arrivals(1:n)=0;
arrival_times(1:n)=0;
departures(1:n)=0;
response_times(1:n)=0;
roundRobbin = 0;
while (t<simtime)
    [y,i]=min(ttne);
    t=t+y;
    ttne=ttne-y;
    if (i==1) %event is an arrival
        if(roundRobbin < n)
            roundRobbin=roundRobbin+1;
        else
            roundRobbin=1;
        end
        ttne(1)=-log(rand)/lambda;
        if (roundRobbin==1)
            arrivals(1)=arrivals(1)+1;
            arrival_times(arrivals(1),1)=t;
            q(1)=q(1)+1;
            if (ttne(2)==Inf)
                ttne(2)=-log(rand)/mu;
            end
        elseif (roundRobbin==2)
            arrivals(2)=arrivals(2)+1;
            arrival_times(arrivals(2),2)=t;
            q(2)=q(2)+1;
            if (ttne(3)==Inf)
                ttne(3)=-log(rand)/mu;
            end
        elseif (roundRobbin==3)
            arrivals(3)=arrivals(3)+1;
            arrival_times(arrivals(3),3)=t;
            q(3)=q(3)+1;
            if (ttne(4)==Inf)
                ttne(4)=-log(rand)/mu;
            end
        elseif (roundRobbin==4)
            arrivals(4)=arrivals(4)+1;
            arrival_times(arrivals(4),4)=t;
            q(4)=q(4)+1;
            if (ttne(5)==Inf)
                ttne(5)=-log(rand)/mu;
            end
        elseif (roundRobbin==5)
            arrivals(5)=arrivals(5)+1;
            arrival_times(arrivals(5),5)=t;
            q(5)=q(5)+1;
            if (ttne(6)==Inf)
                ttne(6)=-log(rand)/mu;
            end
        elseif (roundRobbin==6)
            arrivals(6)=arrivals(6)+1;
            arrival_times(arrivals(6),6)=t;
            q(6)=q(6)+1;
            if (ttne(7)==Inf)
                ttne(7)=-log(rand)/mu;
            end
        elseif (roundRobbin==7)
            arrivals(7)=arrivals(7)+1;
            arrival_times(arrivals(7),7)=t;
            q(7)=q(7)+1;
            if (ttne(8)==Inf)
                ttne(8)=-log(rand)/mu;
            end
        elseif (roundRobbin==8)
            arrivals(8)=arrivals(8)+1;
            arrival_times(arrivals(8),8)=t;
            q(8)=q(8)+1;
            if (ttne(9)==Inf)
                ttne(9)=-log(rand)/mu;
            end
        elseif (roundRobbin==9)
            arrivals(9)=arrivals(9)+1;
            arrival_times(arrivals(9),9)=t;
            q(9)=q(9)+1;
            if (ttne(10)==Inf)
                ttne(10)=-log(rand)/mu;
            end
        elseif (roundRobbin==10)
            arrivals(10)=arrivals(10)+1;
            arrival_times(arrivals(10),10)=t;
            q(10)=q(10)+1;
            if (ttne(11)==Inf)
                ttne(11)=-log(rand)/mu;
            end
        elseif (roundRobbin==11)
            arrivals(11)=arrivals(11)+1;
            arrival_times(arrivals(11),11)=t;
            q(11)=q(11)+1;
            if (ttne(12)==Inf)
                ttne(12)=-log(rand)/mu;
            end
        elseif (roundRobbin==12)
            arrivals(12)=arrivals(12)+1;
            arrival_times(arrivals(12),12)=t;
            q(12)=q(12)+1;
            if (ttne(13)==Inf)
                ttne(13)=-log(rand)/mu;
            end
        elseif (roundRobbin==13)
            arrivals(13)=arrivals(13)+1;
            arrival_times(arrivals(13),13)=t;
            q(13)=q(13)+1;
            if (ttne(14)==Inf)
                ttne(14)=-log(rand)/mu;
            end
        elseif (roundRobbin==14)
            arrivals(14)=arrivals(14)+1;
            arrival_times(arrivals(14),14)=t;
            q(14)=q(14)+1;
            if (ttne(15)==Inf)
                ttne(15)=-log(rand)/mu;
            end
        elseif (roundRobbin==15)
            arrivals(15)=arrivals(15)+1;
            arrival_times(arrivals(15),15)=t;
            q(15)=q(15)+1;
            if (ttne(16)==Inf)
                ttne(16)=-log(rand)/mu;
            end
        elseif (roundRobbin==16)
            arrivals(16)=arrivals(16)+1;
            arrival_times(arrivals(16),16)=t;
            q(16)=q(16)+1;
            if (ttne(17)==Inf)
                ttne(17)=-log(rand)/mu;
            end
        elseif (roundRobbin==17)
            arrivals(17)=arrivals(17)+1;
            arrival_times(arrivals(17),17)=t;
            q(17)=q(17)+1;
            if (ttne(18)==Inf)
                ttne(18)=-log(rand)/mu;
            end
        elseif (roundRobbin==18)
            arrivals(18)=arrivals(18)+1;
            arrival_times(arrivals(18),18)=t;
            q(18)=q(18)+1;
            if (ttne(19)==Inf)
                ttne(19)=-log(rand)/mu;
            end
        elseif (roundRobbin==19)
            arrivals(19)=arrivals(19)+1;
            arrival_times(arrivals(19),19)=t;
            q(19)=q(19)+1;
            if (ttne(20)==Inf)
                ttne(20)=-log(rand)/mu;
            end
        else
            arrivals(20)=arrivals(20)+1;
            arrival_times(arrivals(20),20)=t;
            q(20)=q(20)+1;
            if (ttne(21)==Inf)
                ttne(21)=-log(rand)/mu;
            end
        end
    elseif (i==2) %event is a completion at node 1
        departures(1)=departures(1)+1;
        response_times(departures(1),1) = t - arrival_times(departures(1),1);
        q(1)=q(1)-1;
        if (q(1)>0)
            ttne(2)=-log(rand)/mu;
        else
            ttne(2)=Inf;
        end
    elseif (i==3) %event is a completion at node 2
        departures(2)=departures(2)+1;
        response_times(departures(2),2) = t - arrival_times(departures(2),2);
        q(2)=q(2)-1;
        if (q(2)>0)
            ttne(3)=-log(rand)/mu;
        else
            ttne(3)=Inf;
        end
    elseif (i==4) %event is a completion at node 3
        departures(3)=departures(3)+1;
        response_times(departures(3),3) = t - arrival_times(departures(3),3);
        q(3)=q(3)-1;
        if (q(3)>0)
            ttne(4)=-log(rand)/mu;
        else
            ttne(4)=Inf;
        end
    elseif (i==5) %event is a completion at node 4
        departures(4)=departures(4)+1;
        response_times(departures(4),4) = t - arrival_times(departures(4),4);
        q(4)=q(4)-1;
        if (q(4)>0)
            ttne(5)=-log(rand)/mu;
        else
            ttne(5)=Inf;
        end
    elseif (i==6) %event is a completion at node 5
        departures(5)=departures(5)+1;
        response_times(departures(5),5) = t - arrival_times(departures(5),5);
        q(5)=q(5)-1;
        if (q(5)>0)
            ttne(6)=-log(rand)/mu;
        else
            ttne(6)=Inf;
        end
    elseif (i==7) %event is a completion at node 6
        departures(6)=departures(6)+1;
        response_times(departures(6),6) = t - arrival_times(departures(6),6);
        q(6)=q(6)-1;
        if (q(6)>0)
            ttne(7)=-log(rand)/mu;
        else
            ttne(7)=Inf;
        end
    elseif (i==8) %event is a completion at node 7
        departures(7)=departures(7)+1;
        response_times(departures(7),7) = t - arrival_times(departures(7),7);
        q(7)=q(7)-1;
        if (q(7)>0)
            ttne(8)=-log(rand)/mu;
        else
            ttne(8)=Inf;
        end
    elseif (i==9) %event is a completion at node 8
        departures(8)=departures(8)+1;
        response_times(departures(8),8) = t - arrival_times(departures(8),8);
        q(8)=q(8)-1;
        if (q(8)>0)
            ttne(9)=-log(rand)/mu;
        else
            ttne(9)=Inf;
        end
    elseif (i==10) %event is a completion at node 9
        departures(9)=departures(9)+1;
        response_times(departures(9),9) = t - arrival_times(departures(9),9);
        q(9)=q(9)-1;
        if (q(9)>0)
            ttne(10)=-log(rand)/mu;
        else
            ttne(10)=Inf;
        end
    elseif (i==11) %event is a completion at node 10
        departures(10)=departures(10)+1;
        response_times(departures(10),10) = t - arrival_times(departures(10),10);
        q(10)=q(10)-1;
        if (q(10)>0)
            ttne(11)=-log(rand)/mu;
        else
            ttne(11)=Inf;
        end
    elseif (i==12) %event is a completion at node 11
        departures(11)=departures(11)+1;
        response_times(departures(11),11) = t - arrival_times(departures(11),11);
        q(11)=q(11)-1;
        if (q(11)>0)
            ttne(12)=-log(rand)/mu;
        else
            ttne(12)=Inf;
        end
    elseif (i==13) %event is a completion at node 12
        departures(12)=departures(12)+1;
        response_times(departures(12),12) = t - arrival_times(departures(12),12);
        q(12)=q(12)-1;
        if (q(12)>0)
            ttne(13)=-log(rand)/mu;
        else
            ttne(13)=Inf;
        end
    elseif (i==14) %event is a completion at node 13
        departures(13)=departures(13)+1;
        response_times(departures(13),13) = t - arrival_times(departures(13),13);
        q(13)=q(13)-1;
        if (q(13)>0)
            ttne(14)=-log(rand)/mu;
        else
            ttne(14)=Inf;
        end
    elseif (i==15) %event is a completion at node 14
        departures(14)=departures(14)+1;
        response_times(departures(14),14) = t - arrival_times(departures(14),14);
        q(14)=q(14)-1;
        if (q(14)>0)
            ttne(15)=-log(rand)/mu;
        else
            ttne(15)=Inf;
        end
    elseif (i==16) %event is a completion at node 15
        departures(15)=departures(15)+1;
        response_times(departures(15),15) = t - arrival_times(departures(15),15);
        q(15)=q(15)-1;
        if (q(15)>0)
            ttne(16)=-log(rand)/mu;
        else
            ttne(16)=Inf;
        end
    elseif (i==17) %event is a completion at node 16
        departures(16)=departures(16)+1;
        response_times(departures(16),16) = t - arrival_times(departures(16),16);
        q(16)=q(16)-1;
        if (q(16)>0)
            ttne(17)=-log(rand)/mu;
        else
            ttne(17)=Inf;
        end
    elseif (i==18) %event is a completion at node 17
        departures(17)=departures(17)+1;
        response_times(departures(17),17) = t - arrival_times(departures(17),17);
        q(17)=q(17)-1;
        if (q(17)>0)
            ttne(18)=-log(rand)/mu;
        else
            ttne(18)=Inf;
        end
    elseif (i==19) %event is a completion at node 18
        departures(18)=departures(18)+1;
        response_times(departures(18),18) = t - arrival_times(departures(18),18);
        q(18)=q(18)-1;
        if (q(18)>0)
            ttne(19)=-log(rand)/mu;
        else
            ttne(19)=Inf;
        end
    elseif (i==20) %event is a completion at node 19
        departures(19)=departures(19)+1;
        response_times(departures(19),19) = t - arrival_times(departures(19),19);
        q(19)=q(19)-1;
        if (q(19)>0)
            ttne(20)=-log(rand)/mu;
        else
            ttne(20)=Inf;
        end
    else %event is a completion at node 20
        departures(20)=departures(20)+1;
        response_times(departures(20),20) = t - arrival_times(departures(20),20);
        q(20)=q(20)-1;
        if (q(20)>0)
            ttne(21)=-log(rand)/mu;
        else
            ttne(21)=Inf;
        end
    end

end
% throughput=sum(departures)/t;
avg_response=mean(nonzeros(response_times(:)));
end