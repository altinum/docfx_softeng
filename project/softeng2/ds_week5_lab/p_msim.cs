 private void ParallelSimulation()
 {
     Random rnd = new Random();

     //Iterating through the years
     for (int year = 2005; year < 2025; year++)
     {
         Console.WriteLine("Year: " + year);
         //Iterating through all the individuals
         Parallel.For(0, individuals.Count, i =>
         {
             Individual individual = individuals[i];

             if (!individual.IsAlive) return; //If the individual is dead already, we skip 

             byte személyKora = (byte)(year - individual.YearOfBirth);

             //Handling death
             double pDeath = (from x in pDeaths
                              where x.Sex == individual.Sex && x.Age == személyKora + 1
                              select x.PDeath).First();

             if (rnd.NextDouble() <= pDeath) individual.IsAlive = false;

             //Handling birth -- only women can give birth
             if (individual.Sex == Sex.Female)
             {
                 //Looking up the probability of giving birth
                 double pBirth = (from x in pBirths
                                  where x.Age == személyKora
                                  select x.PGivingBirth).FirstOrDefault();

                 //Is a new baby born?
                 if (rnd.NextDouble() <= pBirth)
                 {
                     Individual newborn = new Individual();
                     newborn.YearOfBirth = year;
                     newborn.NumberOfChildren = 0;
                     newborn.Sex = (Sex)(rnd.Next(1, 3));
                     individuals.Add(newborn);
                 }
             }
         });
     }
 }