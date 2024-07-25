import pandas as pd
from sklearn.neighbors import NearestNeighbors

# Load data from CSV
data = pd.read_csv("wrs_python.csv")

# Create DataFrame
df = pd.DataFrame(data)

# Select the statistics columns for comparison
X = df.drop(columns=['name'])  # Adjust 'name' to match your column name if different

# Fit the KNN model
knn = NearestNeighbors(n_neighbors=6, metric='euclidean')  # 6 because we want 5 similar players + the player itself
knn.fit(X)

# Function to find similar players
def find_similar_players(player_name):
    player_index = df[df['name'] == player_name].index[0]
    distances, indices = knn.kneighbors([X.iloc[player_index]])
    
    # Exclude the first match (the player itself)
    similar_players = df.iloc[indices[0][1:]].copy()  # Use .copy() to avoid SettingWithCopyWarning
    similar_players['distance'] = distances[0][1:]
    similar_players['base_player'] = player_name
    
    return similar_players[['base_player', 'name', 'distance']]

# Collect similar players for each player
all_similar_players = pd.DataFrame(columns=['base_player', 'name', 'distance'])

for player in df['name']:
    similar_players = find_similar_players(player)
    all_similar_players = pd.concat([all_similar_players, similar_players], ignore_index=True)

# Filter to include only the top 5 similar players for each base player
top_similar_players = all_similar_players.groupby('base_player').head(5)

# Ensure we only have exactly 10 results
top_similar_players = top_similar_players.reset_index(drop=True)

# Print the output
print(top_similar_players)

# Export the output to a CSV file
top_similar_players.to_csv("top_similar_players_wrs.csv", index=False)
