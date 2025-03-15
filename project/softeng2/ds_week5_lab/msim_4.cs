private void Simulation()
{
	Random rnd = new Random();

	//Iterating through the years
	for (int year = 2005; year < 2025; year++)
	{
		Console.WriteLine("Year: " + year);
		//Iterating through all the individuals
		for (int i = 0; i < individuals.Count; i++)
		{
			Individual individual = individuals[i];

			if (!individual.IsAlive) continue; //If the individual is dead already, we skip 

			byte személyKora = (byte)(year - individual.YearOfBirth);

			//Handling death
			double pDeath = (from x in pDeaths
							 where x.Sex == individual.Sex && x.Age == személyKora + 1
							 select x.PDeath).First();
			
		}
	}
}