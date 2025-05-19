clc
clear

%gen
target = 'raras_laras'
len = length(target);
genes = create_genes(len);

%fitness
fitness = calculate_fitness(genes,len);

%population
population_size = 10;
population = create_population(target,population_size)

%selection
[parent1, parent2] = selection(population)

%crossover
[child1,child2] = crossover(parent1, parent2)

%mutation
mutation_rate = 0.5;
mutant1 = mutation(child1, mutation_rate)
mutant2 = mutation(child2, mutation_rate)

%regeneration
children = [mutant1, mutant2];
population = regeneration(children,population)