import os
import pandas as pd

path = '/Users/tomdickson/Desktop/pitch_classification/pitchers'

frames = []

for file in os.listdir(path):
    f = os.path.join(path, file)
    df = pd.read_csv(f)
    df = df[['pitch_name', 'player_name', 'release_speed',
            'release_spin_rate', 'spin_axis']]
    frames.append(df)

df = pd.concat(frames, ignore_index=True)
df = df[(df['release_spin_rate'].notna()) & (df['spin_axis'].notna())]

df.to_csv('pitch_data.csv')
