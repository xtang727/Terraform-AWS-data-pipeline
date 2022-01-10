import spotipy
from dotenv import load_dotenv

load_dotenv()

spotify = spotipy.Spotify(client_credentials_manager=spotipy.oauth2.SpotifyClientCredentials())

def get_artists_from_playlist(playlist_uri):
    artists = {}
    playlist_tracks = spotify.playlist_tracks(playlist_id=playlist_uri)
    for song in playlist_tracks['items']:
        if song['track']:
            artists[song['track']['artists'][0]['uri']] = song['track']['artists'][0]['name']
    return artists