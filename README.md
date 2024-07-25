# The Unicorn - An NFL comparison tool

Using college statistics from cfbfastR, NFL Combine statistics from nflreadR, and measurables from nflreadR, we can see how similar players are coming into the NFL.
</br>
</br>
I used R to wrangle/normalize/weigh the data and then used Python to conduct a K-Nearest Neighbors algorithm, finding the five most similar players to a given player. The five most similar players are calculated based on their Euclidan distance which was then converted to a "similarity score". I also used R to impute missing combine/statistic values using KNN imputation. 
</br>
</br>
The final product is a shiny app where users can select from a directory of over 1700 players and see who is most similar to them.
</br>
</br>
I have included my R and Python Script in this repository. You can access my shiny app here:
[https://atulvenkatesh.shinyapps.io/Unicorn/](url)

<img width="1470" alt="Screenshot 2024-07-25 at 1 56 16 PM" src="https://github.com/user-attachments/assets/cc325c44-bc03-4454-ae46-e73b858fdf3b">
