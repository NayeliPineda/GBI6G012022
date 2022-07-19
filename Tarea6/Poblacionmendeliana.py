import scipy # for random numbers
def build_population(N, p):
    """"
    build_population es una función que genera una población. La población está formada por N individuos. 
    Cada individuo tiene dos cromosomas, que contienen el alelo "A" o "a", con probabilidad p o 1-p, respectivamente.
    La población es una lista de tuplas. 
    """
    population = [] #depende del N
    for i in range(N):
        allele1 = "A" #alelo dominante, este alelo se evalua
        if scipy.random.rand() > p: #p es la propabilidad que me asome el dominante, el random.rand se compara con p
            allele1 = "a"
        allele2 = "A"
        if scipy.random.rand() > p:
            allele2 = "a"
        population.append((allele1, allele2))
    return population

def compute_frequencies(population):
    """ 
    compute_frequencies es una función que va a producir un recuento de genotipos para la población.
    Como resultado, devuelve un diccionario de frecuencias genotípicas.
    """
    AA = population.count(("A", "A"))
    Aa = population.count(("A", "a"))
    aA = population.count(("a", "A"))
    aa = population.count(("a", "a"))
    print("Generacion 1:",{"AA": AA, "aa": aa, "Aa": Aa, "aA": aA})
    
    #agregamos para las siguientes generaciones
    viejo = population
    for i in range(0,500):
        nuevo = reproduce_population(viejo)
        viejo = nuevo
        AA = nuevo.count(("A", "A"))
        Aa = nuevo.count(("A", "a"))
        aA = nuevo.count(("a", "A"))
        aa = nuevo.count(("a", "a"))
        print("Generacion ",i+1,":",{"AA": AA, "aa": aa, "Aa": Aa, "aA": aA})
    return
def reproduce_population(population):
    """ 
    reproduce_population es una función que produce una nueva generación de la población mediante la reproducción.
    Para cada uno de los N nuevos descendientes.
    - elige a los padres al azar;
    - la descendencia recibe un cromosoma procedente
    cada uno de los padres.
    """
    new_generation = []
    N = len(population)
    for i in range(N):
        # random integer between 0 and N-1
        dad = scipy.random.randint(N)
        mom = scipy.random.randint(N)
        # which chromosome comes from mom
        chr_mom = scipy.random.randint(2)
        offspring = (population[mom][chr_mom], population[dad][1 - chr_mom])
        #if offspring == ("a", "a"): 
          #next()
        new_generation.append(offspring)
    return new_generation
