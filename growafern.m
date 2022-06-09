% Ariana Pineda, CAAM 210, SPRING 2022, Grow A Fern
% growafern.m
% Plots a simple and advanced fern
% Last modified: 1/27/2022

function growafern
%this driver runs the plots
simplefern;
advancedfern;
end

function simplefern
z = [1;0];
hold on
    for i = 1:4000
        r = rand;
        % when you increase 0.3994, less points show up in the top part of
        % the plot. When you decreasse 0.3994, less points show up in the
        % bottom part of the plot.
        if r < 0.8
            z = [ 0.4 -0.3733; 0.06 0.60]*z + [0.3533;0];
    
        else
            z = [-0.8 -0.1867; 0.1371 0.80]*z+[1.1;0.1];
        end 
        % each iteration should plot a point
        title('Simple Fern');
        plot(z(1,1),z(2,1),'.');

    end
hold off
end



function advancedfern
z = [1;0];
hold on
    for i = 1:4000
        r = rand;
    if r <= 0.01
        z = [0 0;0 0.16]*z;
    elseif r<=0.76
        z = [0.85 0.04; -0.04 0.85]*z + [0;16];
    elseif r<=0.88
        z= [0.2 -0.26; 0.23 0.22]*z+[0;1.6];
    else 
        z = [-0.15 0.28; 0.26 0.24]*z + [0;0.44];

    end 
    % each iteration should plot a point
    title('Advanced Fern');
    plot(z(1,1),z(2,1),'.');

    end
hold off
end
