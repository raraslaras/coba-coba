function [parent1,parent2] = selection(population)
fitness = zeros(1,length(population));
for i = 1:length(population)
    fitness(i) = population(i).fitness;
end
[~,index] = max(fitness);
parent1 = population(index);
population(index) = [];
fitness(index) = [];
[~,index] = max(fitness);
parent2 = population(index);
end