% Initializing the cost and temperature values
C_old=const;
t=temperature;
% Iterating loop until t is greater than zero
for t>0:
    % Choosing to run loops until the maximum values
    for i=0:maxvalue
        % Finding new solution by pertrubation
    x=p(const);
    % Finding the new cost
    C_new=cost(x);
    % Finding the cost difference for further comparison
    costdiff=C_new-C_old;
     % Comparing the cost difference to comtinue the iteration and get the
     % minimal cost
        if costdiff>0
            % Creating random number
        random=random(0,1);
        % Comparing with the boltzmann equation
            if(random>=exp(costdiff/(K*t)))
            continue;
            else
             C_old=C_new;
            end
        else
        C_old=C_new;
        end
    end
    % Creating the end parameter by reducing the temperature gradually with
    % the fixed step.
    t=t-step_size;

end