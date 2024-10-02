
firefox_dir="C:/Users/${USERNAME}/Desktop/Tor Browser"

profile_dir="${firefox_dir}/Browser/TorBrowser/Data/Browser/profile.default"
echo $profile_dir

for file in ./certs/*
do
  nickname=$(openssl x509 -noout -subject -in "$file" | sed -n '/^subject/s/^.*CN=//p')
  certutil -D -d sql:"$profile_dir" -n "$nickname"
  certutil -A -d sql:"$profile_dir" -n "$nickname" -i "$file" -t "p,p,p"
done

certutil -L -d sql:"$profile_dir"
