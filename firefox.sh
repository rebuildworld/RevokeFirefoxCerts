
firefox_dir="C:/Users/${USERNAME}/AppData/Roaming/Mozilla/Firefox"

key_val=$(sed -n '2p' "${firefox_dir}/profiles.ini")
val=$(echo $key_val | cut -d '=' -f 2)

profile_dir="${firefox_dir}/${val}"
echo $profile_dir

for file in ./certs/*
do
  nickname=$(openssl x509 -noout -subject -in "$file" | sed -n '/^subject/s/^.*CN=//p')
  certutil -D -d sql:"$profile_dir" -n "$nickname"
  certutil -A -d sql:"$profile_dir" -n "$nickname" -i "$file" -t "p,p,p"
done

certutil -L -d sql:"$profile_dir"
