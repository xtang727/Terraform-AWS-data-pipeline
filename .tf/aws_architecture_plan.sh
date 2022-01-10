terraform init

cp -r /Users/XiaoboTang/Public/music_pipeline/lib/python3.9/site-packages/spotipy ../lambda_payloads/music_analysis/
cp -r /Users/XiaoboTang/Public/music_pipeline/lib/python3.9/site-packages/requests ../lambda_payloads/music_analysis/

cp /Users/XiaoboTang/Public/music_pipeline/main.py ../lambda_payloads/music_analysis/
cp /Users/XiaoboTang/Public/music_pipeline/config/playlists.py ../lambda_payloads/music_analysis/config/
cp /Users/XiaoboTang/Public/music_pipeline/tools/playlists.py ../lambda_payloads/music_analysis/tools/

cd ../lambda_payloads/music_analysis/

zip -r ../../payload.zip *

cd ../../.tf/

terraform plan