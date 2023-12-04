# Reproducible research: version control and R

\# INSERT ANSWERS HERE #
Q1-3:
https://github.com/amritharaghavan/logistic_growth

4) When running the script, I observed that the graph displaying the walk showed a different path every time. This path is seemingly completely random- and it does not seem possible to replicate any one graph that was made, as there is no specific random seed, or a starting number used so that a 'random' motion can be replicated. This means that any work based on this Brownian motion simulator will not be able to be reoeated, either by the author of the code or by anyone else, making this bad for scientific method. (???)

A random seed is a value used to start a pseudorandom number generator. This value is helpful in scientific coding in order to make work replicable, while still starting a random pathway. Using a random seed in a generator in this way ensures that, if this seed is used to start the generator, the same values will be achieved each time. This is essential for proper scientific method and reproducibility, as there is no guarantee that results will work if they cannot  be reproduced by anyone else.

<img width="907" alt="image" src="https://github.com/amritharaghavan/reproducible-research_homework/assets/150163772/eeef1ccf-7a21-485b-b4cc-c6e93040c4ad">


5) The table has 13 rows and 33 columns

You can use a log transformation on both axes to fit a linear model to the data. This transformation can be found in question5_code.R

alpha= 1.5152
p=2.28e-10, so significant
beta= exp(7.0748)
    =1181.807
p= 6.44e-10, so significant
![image](https://github.com/amritharaghavan/reproducible-research_homework/assets/150163772/3216a1c9-b719-4213-8092-2671acc0fd05)
The code for this image is found in question5_code.R

 When genome length= 300kb, virion volume= 6698076nm3- the working for this is in the question5_code.R file

Bonus:
Reproducibility is the ability for an experiment to give consistent results when the same data is analysed, while replicability is the ability for multiple researchers to produce the same results based on the same method. Essentially, in replicability, the entire experiment is repeated from beginning to end, the ensure that the results themselves are reliable, while in reproducibility, existing data is reanalysed, to determine whether the analysis of results was performed fairly and coorrectly. A study can be reproducible, but not replicable- if the analysis is done correctly, but the results themselves come out differently when replicated in a different setting, the data is reproducible but not replicable. 

Git and Github can be used to improve replicability and reproducibility in many ways. Primarily, git tracks any changes to code over time, so previous versions of work can be accessed at any point. This allows results and analysis to be reproduced. Github allows for this to be accessed by other researchers, so they can understand the experiments performed better, and therefore replicate results better. Git allows different collaborators to work on different branches of the same project, and merge changes later- so all responses and contributions are well-documented, and it is clear who performed what parts of each analysis. Git also creates a place where detailed documentation of every change and piece of analysis can be described, and instructions and annotations of how all analysis has been performed can be laid out, so other researchers can reproduce your analysis, or replicate it based on their own data. Branches are also very helpful in reproducibility- new copies of your work can be made, so any approaches which did not necessarily end up being the key methods of analysis can still be documented and reproduced. Github also has systems to ensure code runs successfully after each commit, to prevent issues that are never caught. 

However, for beginners, git and github are not necessarily the most accessible, making it difficult for science to be practiced and reproducibility to be uphheld by those who are less used to using code. Also, there are limitations on what is free to use on github, so those with a lower budget may not be able to open pribvate repositories, and any larger teams will have to pay if they require more collaborators than is allowed on the free github tier. GitHub also relies on network connectivity, and a central service- if either of these are lost, then the ability to work on your experiment is also lost. 
## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points (plus an optional bonus question worth 10 extra points). First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers. All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   - A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points)
   - Investigate the term **random seeds**. What is a random seed and how does it work? (5 points)
   - Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points)
   - Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points)

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \beta L^{\alpha}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   - Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)
   - What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)
   - Find the exponent ($\alpha$) and scaling factor ($\beta$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points)
   - Write the code to reproduce the figure shown below. (10 points)

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  - What is the estimated volume of a 300 kb dsDNA virus? (4 points)

**Bonus** (**10 points**) Explain the difference between reproducibility and replicability in scientific research. How can git and GitHub be used to enhance the reproducibility and replicability of your work? what limitations do they have? (e.g. check the platform [protocols.io](https://www.protocols.io/)).
